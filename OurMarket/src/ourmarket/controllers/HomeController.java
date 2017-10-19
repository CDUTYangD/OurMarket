/**
 * 
 */
package ourmarket.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import ourmarket.models.CircleInfo;
import ourmarket.models.Comments;
import ourmarket.models.Goods;
import ourmarket.models.ImageLibrary;
import ourmarket.models.User;
import ourmarket.pojos.AGoodsComments;
import ourmarket.pojos.GoodsDetailPojo;
import ourmarket.pojos.MoreGoodsPojo;
import ourmarket.services.ICircleService;
import ourmarket.services.ICommentService;
import ourmarket.services.IGoodService;
import ourmarket.services.IImageLibraryService;
import ourmarket.services.IUserService;
import ourmarket.sys.SessionInfo;

/**
 * @author FCmmmmmm
 * */
@Controller
public class HomeController {
	@Autowired
	IUserService userService = null;
	@Autowired
	IGoodService goodService=null;
	@Autowired
	ICircleService circleService=null;
	@Autowired
	IImageLibraryService imgservice=null;
	@Autowired
	ICommentService commentService=null;
	@RequestMapping("home")
	public String Index(HttpServletRequest request,Model model){
		
		//List<CircleInfoPojo>circleInfoPojos=new ArrayList<CircleInfoPojo>();
		List<CircleInfo>circleInfos=circleService.findAllCircles();
		//为该死的前端创造标签布局
		String allLable="";
		String imgUrl="";
		String aLable="";
		JSONArray jsonArray = new JSONArray();
		//发送圈子信息
		for(CircleInfo circleInfo:circleInfos){
			JSONObject jsonObject=new JSONObject();
			allLable="";
			imgUrl="";
			aLable="";
			jsonObject.put("circleX", circleInfo.getCircleX());
			jsonObject.put("circleY", circleInfo.getCircleY());
			jsonObject.put("circleColor", circleInfo.getCircleDes());
			jsonObject.put("circleID", circleInfo.getCircleId());
			//查找所有关于circleID的物品
			List<Goods>goods=goodService.findGoodsByLocation(circleInfo.getCircleId());
			//没查到什么也不干
			if(goods==null){
				
			}else {
				//当有物品时，遍历物品，拿到imgListid==imageId查找imgSrc
				for(Goods good :goods ){
					ImageLibrary imgMe=new ImageLibrary();
					Long imageId=good.getImageListId();
					//如果找到了imgMe对象
					if(imgservice.findImageId(imageId)!=null){
						imgMe=imgservice.findImageId(imageId);
						imgUrl=imgMe.getImageSrc();
					    aLable="<img"+"%20"+"onclick=sendGood("+good.getGid()+")"+"%20"+"style='height:40px;width:30px'"+"src"+"="+"'"+imgUrl+"'"+"/>";
					    allLable+=aLable;
					}else {
						
					}
					
				}
			}
			
			jsonObject.put("allLable", allLable);
			jsonArray.add(jsonObject);
//			
//			CircleInfoPojo circleInfoPojo=new CircleInfoPojo();
//			
//			circleInfoPojo.setCircleX(circleInfo.getCircleX());
//			circleInfoPojo.setCircleY(circleInfo.getCircleY());
//			circleInfoPojo.setCircleColor(circleInfo.getCircleDes());
//			circleInfoPojo.setCircleID(circleInfo.getCircleId());
//			circleInfoPojos.add(circleInfoPojo);
		}
		String str=jsonArray.toJSONString().toString();
		model.addAttribute("str", str);
		
		return "redirect:/home.jsp";
	}
	
	@RequestMapping("goodsDetails")
	public String index(HttpServletRequest request,Model model,String goodId){
		if(goodId==null){return "goodsDetails";}
		int gid=Integer.valueOf(goodId);
		Goods good=goodService.findGoodByGid(gid);//用户点击的商品
		int uId=userService.findUserById(good.getUid()).getUid();
		List<Comments>comments=commentService.findCommmentsByGid(gid);
		List<AGoodsComments>aGoodsComments=new ArrayList<AGoodsComments>();
		List<MoreGoodsPojo>moreGoodsPojos=new ArrayList<MoreGoodsPojo>();
		List<Goods>goods=goodService.findGoodByUid(uId);
		
		for (Goods go : goods) {
			if(gid!=go.getGid()){
				MoreGoodsPojo moreGoodsPojo=new MoreGoodsPojo();
				moreGoodsPojo.setgId(go.getGid());
				moreGoodsPojo.setgName(go.getGname());
				moreGoodsPojo.setgPrice(go.getGprice());
				moreGoodsPojo.setImgSrc(imgservice.findImageId(go.getImageListId()).getImageSrc());
				moreGoodsPojos.add(moreGoodsPojo);
			}
		}
		model.addAttribute("moreGoodsPojos", moreGoodsPojos);
		
		
		
		
		//对象评论  涉及评论超限问题
		for(Comments comment:comments){
			AGoodsComments aComments=new AGoodsComments();
			aComments.setcString(comment.getComments());
			aComments.setcTime(comment.getCommentTime());
			aComments.setcUId(comment.getUid());
			aComments.setcUName(userService.findUserById(comment.getUid()).getUnickName());//涉及匿名问题
			aGoodsComments.add(aComments);
		}
		model.addAttribute("aGoodsComments", aGoodsComments);
		
		//对象商品
		GoodsDetailPojo goodsDetailPojo=new GoodsDetailPojo();
		goodsDetailPojo.setgName(good.getGname());
		goodsDetailPojo.setgPrice(good.getGprice());
		goodsDetailPojo.setgTitle(good.getGtitle());
		if(imgservice.findImageId(good.getImageListId())!=null){
			goodsDetailPojo.setgImgSrc(imgservice.findImageId(good.getImageListId()).getImageSrc());
		}
		goodsDetailPojo.setgLocation(circleService.findCircleById(good.getGlocation()).getCircleName());
		goodsDetailPojo.setgPhone(userService.findUserById(good.getUid()).getUphone());
		model.addAttribute("goodsDetailPojo", goodsDetailPojo);
		
		
		
		
		
		return "goodsDetails";
	}

	@RequestMapping("log")
	public String index(HttpServletRequest request,Model model,String phone,String password) {
		
		List<User> users = userService.findAllUsers();
		for(User user:users)
		{
			if(user.getUphone().equals(phone) || user.getUnickName().equals(phone))
			{
				if(user.getUpassword().equals(password))
				{
					SessionInfo sessionInfo = new SessionInfo();
					sessionInfo.setHeadImageID(user.getImageListId());
					sessionInfo.setPhone(user.getUphone());
					sessionInfo.setRoleID(user.getRid());
					sessionInfo.setUserID(user.getUid());
					sessionInfo.setUserName(user.getUnickName());
					//sessionInfo.setLastDate(user.getLastDate());
					request.getSession().setAttribute("sessionInfo", sessionInfo);
					return "redirect:/propertyCenter";
				}
			}
		}		
		return "redirect:/home.jsp";
	}
}
