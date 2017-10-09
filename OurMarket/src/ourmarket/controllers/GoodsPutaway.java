package ourmarket.controllers;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Timestamp;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import ourmarket.models.Goods;
import ourmarket.models.ImageLibrary;
import ourmarket.services.IGoodService;
import ourmarket.services.IImageLibraryService;
import ourmarket.sys.SessionInfo;
import ourmarket.utils.SessionUtils;
import sun.invoke.empty.Empty;

@Controller
public class GoodsPutaway {
	@Autowired
	IGoodService goods = null;
	@Autowired
	IImageLibraryService iImageLibraryService = null;

	@RequestMapping("goodsPutaway")
	public String index(HttpServletRequest request, Model model, String goodsName, String goodsPrice, String goodsNum,
			String goodsDes, Short glocation) throws IllegalStateException, IOException {
		SessionInfo sessionInfo = SessionUtils.getSessionInfo(request);

		if (sessionInfo == null || null == String.valueOf(sessionInfo.userID)) {
			return "unload";
		} else {
			if ((goodsName == null) || (goodsDes == null) || (goodsNum == null) || (goodsPrice == null)) {
				return "goodsPutaway";
			}

			Long imgID = 1L;
			glocation = 2;// 本来是前端传来，但是前端黑没有设置

			String goodTileString = "此条信息目前尚未获得";
			// 把数量转换成integer模式
			Integer gNum = Integer.valueOf(goodsNum);
			// 生成时间
			Timestamp time = new Timestamp(System.currentTimeMillis());
			// 把价格转换成float格式
			Float gprice = Float.valueOf(goodsPrice);
			// 未获得响应状态、类型
			Short gtype = 0;
			Short gstate = 0;

			if (request instanceof MultipartHttpServletRequest) {

				MultipartHttpServletRequest multipartHttpServletRequest = (MultipartHttpServletRequest) request;
				// 获得第1张图片（根据前台的name名称得到上传的文件）
				MultipartFile imgFile1 = multipartHttpServletRequest.getFile("Photo");
				if (!imgFile1.isEmpty()) {
					// 获取前端传来的文件名
					String fileName = imgFile1.getOriginalFilename();
					String SQLBasePath = "goodsImg";
					// 拿到本地服务器会话位置---可以是绝对地址
					String realPath = request.getSession().getServletContext().getRealPath("/") + "\\" + SQLBasePath;
					Date date = new Date();
					// 自定义的文件名称
					String trueFileName = date.getYear() + date.getMonth() + date.getDay() + date.getHours()
							+ date.getMinutes() + fileName;
					// 设置存放图片文件的路径
					String path = realPath + trueFileName;
					try {
						// 利用文件流保存文件
						imgFile1.transferTo(new File(path));
					} catch (Exception e) {

					}
					String imgLisetID = "" + date.getYear() + "" + date.getMonth() + "" + date.getDay() + ""
							+ date.getHours() + "" + date.getMinutes() + "" + date.getSeconds() + ""
							+ Math.round(Math.random() * 100);
					imgID = Long.valueOf(imgLisetID);
					String imgSRC = SQLBasePath + "/" + trueFileName;
					ImageLibrary imageLibrary = new ImageLibrary(imgID, imgSRC);
					iImageLibraryService.addImageLibrary(imageLibrary);

				}

			}

			Goods good = new Goods(sessionInfo.userID,goodsName, gNum, time, goodTileString, gprice, gstate, gtype, glocation, imgID);
			goods.createGood(good);
		}
		
		return "shelvedGoods";

	}
}
