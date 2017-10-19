package ourmarket.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

import ourmarket.daos.ImageLibraryDAO;
import ourmarket.models.Goods;
import ourmarket.models.Message;
import ourmarket.pojos.GoodsPutoff;
import ourmarket.services.IGoodService;
import ourmarket.services.IImageLibraryService;
import ourmarket.services.IImageListService;
import ourmarket.services.IOrderService;
import ourmarket.services.IUserService;
import ourmarket.sys.SessionInfo;
import ourmarket.utils.SessionUtils;

@Controller
public class GoodsPutoffController {
	@Autowired
	IImageListService imageListService=null;
	@Autowired
	IImageLibraryService imageLibraryService=null;
	@Autowired
	IUserService iUerService=null;
	@Autowired
	IGoodService iGoodService=null;
	@Autowired
	IOrderService iOrderService=null;
//	private static final Logger log = LoggerFactory.getLogger(MessageController.class);
	@RequestMapping("goodsPutoff")
	public String index(HttpServletRequest request,Model model,String order){
		SessionInfo sessionInfo = SessionUtils.getSessionInfo(request);

		if (sessionInfo == null || null == String.valueOf(sessionInfo.userID)) {
			return "unload";
		} else {
		Integer master=sessionInfo.userID;//暂时定义用户id为1
		if(order==null){}
		else {
			//List<Goods>goods=new ArrayList<Goods>();
			Goods good=new Goods();
			String[]iList=new String[]{};
			iList=order.split("\\|");
			for (int i = 0; i < iList.length; i++) {
				if (iList[i]==null) {
					break;
				}else {
					Integer gid=Integer.valueOf(iList[i]);
					good=iGoodService.findGoodByGid(gid);
					if(good.getUid().equals(master)){
						iGoodService.deleteGood(good);
					}
				}
			}
			
		}
		
		
		
		//查询数据库
		try {
			List<GoodsPutoff>goodsPutoffs=new ArrayList<GoodsPutoff>();
			List<Goods>goods=new ArrayList<Goods>();
			
			goods=iGoodService.findGoodByUid(master);//把所有查询到uid=master的货物放入集合
			for(Goods good:goods){
				GoodsPutoff goodsPutoff=new GoodsPutoff();
				goodsPutoff.setGoodsID(good.getGid());
				goodsPutoff.setMasterId(master);
				goodsPutoff.setDescription(good.getGtitle());
				goodsPutoff.setPrice(good.getGprice());
				goodsPutoff.setGoodsName(good.getGname());
				goodsPutoff.setImgSrc(imageLibraryService.findImageId(good.getImageListId()).getImageSrc());
				goodsPutoffs.add(goodsPutoff);
			}
			model.addAttribute("goodsPutoffs",goodsPutoffs);
		} catch (Exception e) {
			// TODO: handle exception
//			log.error("This is wrong with selecting GoodsPutaway",e);
		}
		}
		return "goodsPutoff";
		
		
		
		
		
		
	}
}
