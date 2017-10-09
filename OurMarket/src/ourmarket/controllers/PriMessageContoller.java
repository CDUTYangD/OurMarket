package ourmarket.controllers;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ourmarket.models.Message;
import ourmarket.models.User;
import ourmarket.pojos.PrivateMessageInfo;
import ourmarket.services.IImageLibraryService;
import ourmarket.services.IImageListService;
import ourmarket.services.IMyMessageService;
import ourmarket.services.IUserService;
import ourmarket.sys.SessionInfo;
import ourmarket.utils.SessionUtils;

@Controller
public class PriMessageContoller {
	@Autowired
	IUserService iUserServices=null;
	@Autowired
	IMyMessageService iMyMessageService=null;

	
	@Autowired
	IImageListService iimageList=null;
	@Autowired
	IImageLibraryService imageLirary=null;
	@RequestMapping("privateMessage")
	public String index(HttpServletRequest request,Model model){
		SessionInfo sessionInfo = SessionUtils.getSessionInfo(request);
		if (sessionInfo == null || null == String.valueOf(sessionInfo.userID)) {
			return "unload";
		}else {
			List<Message>messages=new ArrayList<Message>();
			List<Message>messages2=new ArrayList<Message>();
			//List<User>users=new ArrayList<User>();
			List<Integer>u=new ArrayList<Integer>();
			List<PrivateMessageInfo>priInfos=new ArrayList<PrivateMessageInfo>();
			//查询数据库
		    Integer master=sessionInfo.userID;
			//拿到未读消息
			messages=iMyMessageService.selectByUid2(master);
			for(Message message:messages){
				if(message.getMstate()==1){
					messages2.add(message);
				}
			}
			//拿到不同的消息来源用户
			for(Message message:messages2){
				if(!u.equals(message.getUid1())){
					u.add(message.getUid1());
				}
			}
			//开始制作前端显示
			for(Integer uu:u){
				PrivateMessageInfo priInfo=new PrivateMessageInfo();
				List<Message>messages3=iMyMessageService.selectMessage(uu, master);//拿到所有uid1和uid2的通信
				Collections.reverse(messages3);//逆序排列 是最新消息处于最小号
				if(messages3.get(0)!=null){
					priInfo.setFirstMessage(messages3.get(0).getMcontent());
					priInfo.setTime(messages3.get(0).getMtime());
				}else {
					priInfo.setFirstMessage("<a href='#www.baidu.com'>最新消息错误，请联系程序员哥哥</a>");
				}
				priInfo.setFromID(uu);//拿到uid
				priInfo.setFromName(iUserServices.findUserById(uu).getUnickName());//拿到名字
				long headLis=iUserServices.findUserById(uu).getImageListId();//拿到储存的头像序列
				priInfo.setHeadImgSRC(imageLirary.findImageList(headLis).getImageSrc());//拿取头像储存地址
			
				priInfos.add(priInfo);
			}
			model.addAttribute("priInfos", priInfos);
			
			
		}
		
		
		
		return "privateMessage";
	}
}
