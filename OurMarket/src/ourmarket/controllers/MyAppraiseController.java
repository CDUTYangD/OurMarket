package ourmarket.controllers;

import java.lang.ProcessBuilder.Redirect;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ourmarket.models.Comments;
import ourmarket.models.Goods;
import ourmarket.models.ImageLibrary;
import ourmarket.models.ImageList;
import ourmarket.models.Orders;
import ourmarket.pojos.ComentsInfo;
import ourmarket.services.ICommentService;
import ourmarket.services.IGoodService;
import ourmarket.services.IImageLibraryService;
import ourmarket.services.IImageListService;
import ourmarket.services.IOrderService;
import ourmarket.services.impl.CommentServiceClass;
import ourmarket.services.impl.OrderServiceClass;
import ourmarket.sys.SessionInfo;
import ourmarket.utils.SessionUtils;

@Controller
public class MyAppraiseController {
	@Autowired
	IOrderService orderService = null;
	@Autowired
	IGoodService goodService = null;
	@Autowired
	IImageLibraryService imageLibraryService = null;
	@Autowired
	IImageListService imageListService = null;
	@Autowired
	ICommentService CommentService = null;
	@RequestMapping("myAppraise")
	public String index(HttpServletRequest request, Model model) {
		SessionInfo sessionInfo = SessionUtils.getSessionInfo(request);

		if (sessionInfo == null || null == String.valueOf(sessionInfo.userID)) {
			return "unload";
		} else {
			List<ComentsInfo> comments = new ArrayList<ComentsInfo>();
			List<Orders> orderlist = orderService.findOrdersByUid(sessionInfo.userID);
			for (Orders order : orderlist) {
				if(order.getOpayState() == 1 && order.getOsendState() == 1)
				{
					ComentsInfo comment = new ComentsInfo();
					Goods good = goodService.findGoodByGid(order.getGid());
					ImageList imageList = imageListService.findImageLists(good.getImageListId());
					ImageLibrary imageLibrary = imageLibraryService.findImageId(imageList.getImageListId());
					
					comment.setGoodImg(imageLibrary.getImageSrc());
					comment.setGoodName(good.getGname());
					comment.setGoodNum(order.getOnum());
					comment.setGoodPrice(good.getGprice());
					comment.setOid(order.getOid());
					comment.setGid(good.getGid());
					
					comments.add(comment);
				}				
			}
			model.addAttribute("myappraise",comments);
		}
		return "myAppraise";
	}
	@RequestMapping("myAppraiseUp")
	public String appraiseup(HttpServletRequest request, Model model, String commentsText, String gID, String oID)
	{
		SessionInfo sessionInfo = SessionUtils.getSessionInfo(request);
		Comments comment = new Comments();
		Goods good = goodService.findGoodByGid(Integer.valueOf(gID));
		Date date = new Date();
		String datestr = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(date);
		comment.setComments(commentsText);
		comment.setGid(Integer.valueOf(gID));
		comment.setOid(Integer.valueOf(oID));
		comment.setImageListId(good.getImageListId());
		comment.setCommentTime(Timestamp.valueOf(datestr));
		comment.setCommentState((short)1);
		comment.setUid(sessionInfo.userID);
		
		CommentService.addComment(comment);
		
		return "redirect:/myAppraise";
	}
}
