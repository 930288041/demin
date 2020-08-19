/**
 * @author 李茂
 *@data2019年5月27日下午4:11:59
 * 
 */
package com.aieduc.action;


import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.awt.image.BufferedImage;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Map;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.servlet.ModelAndView;
import org.yaml.snakeyaml.external.biz.base64Coder.Base64Coder;

import com.aieduc.entity.User;
import com.aieduc.service.IUserService;
import com.aieduc.utils.GeneratVerifyCodeImg;

import sun.misc.BASE64Encoder;

/**
 * @author limao
 *@data2019年5月27日下午4:11:59
 */
@Controller
public class IndexAction {
	@Autowired
	IUserService userServiceImpl;
	
    @RequestMapping("/")
	public String index() {
		return "login";
	}
    @RequestMapping("register.do")
    public String register() {
    	return "register";
    }
    
    @RequestMapping("index.do")
    public String index1() {
    	return "index";
    }
    
    @RequestMapping("login.do")
    public ModelAndView login(User user,@RequestParam String verifyCode,HttpServletRequest request) {
    	ModelAndView mv = new ModelAndView();
    	mv.setViewName("login");
    	
       String checkCode = (String) request.getSession().getAttribute("checkCode");
		
		if(checkCode == null || verifyCode == null || verifyCode.equals("") || !verifyCode.equalsIgnoreCase(checkCode)) {
			mv.addObject("message", "验证码错误，请输入正确的验证码!");
			return mv;
		}
    	
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			BASE64Encoder base64en = new BASE64Encoder();
			user.setUserPwd(base64en.encode(md.digest(user.getUserPwd().getBytes("utf-8"))));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		User loginUser = userServiceImpl.findUserByUserName(user.getUserName());
		if(loginUser != null && loginUser.getUserPwd().equals(user.getUserPwd())) {
			
			mv.setViewName("index");
			request.getSession().setAttribute("loginUser", loginUser);
			return mv;
		}else {
			mv.addObject("message", "用户名或密码错误!");
			
			return mv;
		}
      }
     
    @RequestMapping("logout.do")
    public String logout(HttpServletRequest request) {
    	request.getSession().removeAttribute("user");
    	request.getSession().invalidate();
    	return "login";
    }
    
    @RequestMapping("verifycode.do")
	public void verifyCode(HttpServletRequest request, HttpServletResponse response){
		GeneratVerifyCodeImg saveCode=new GeneratVerifyCodeImg("abcdefghijklmnopqrstuvwxyz123456789".toUpperCase().toCharArray(),
				100, 25, 6);
		// 图片不需要缓存的响应头
		response.setHeader("Pragma", "No-cache");
		// 图片不需要缓存的响应头
		response.setHeader("Cache-Control", "no-cache");
		// 图片不需要缓存的响应头
		response.setDateHeader("Expires", 0);
		// 设置响应MIME类型为JPEG图片
		response.setContentType("image/jpeg");
		// 创建验证码图片
		saveCode.createSaveCodeImage();
		// 获取验证码图片
		BufferedImage img = saveCode.getImage();
		// 获取验证码字符串
		String codeString = saveCode.getCodeString();
		// 获取会话对象
		HttpSession session = request.getSession(true);
		// 将验证码字符串存入会话
		session.setAttribute("checkCode", codeString);
		try {
			// 将缓存图片编码为物理图片数据并从响应输出流中输出到客户端
			ImageIO.write(img, "JPEG", response.getOutputStream());
			// 捕获异常
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}
