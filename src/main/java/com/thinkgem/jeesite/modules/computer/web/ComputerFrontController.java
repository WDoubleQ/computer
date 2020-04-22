/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.computer.web;

import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.modules.cms.entity.Site;
import com.thinkgem.jeesite.modules.cms.service.*;
import com.thinkgem.jeesite.modules.cms.utils.CmsUtils;
import com.thinkgem.jeesite.modules.computer.entity.Computer;
import com.thinkgem.jeesite.modules.computer.service.ComputerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 * 网站Controller
 * @author ThinkGem
 * @version 2013-5-29
 */
@Controller
@RequestMapping(value = "${frontPath}")
public class ComputerFrontController extends BaseController{

	@Autowired
	private ComputerService computerService;

	@RequestMapping(value = "ali")
	public String ali(){
		return "modules/computer/ali";
	}

	/**
	 * 网站首页
	 */
	@RequestMapping(value = "computer")
	public String index(Model model) {
		Site site = CmsUtils.getSite(Site.defaultSiteId());
		model.addAttribute("site", site);
		model.addAttribute("isIndex", true);
		return "modules/computer/index";
	}
	

	@RequestMapping(value = "computer/second")
	public String toSecond(Model model,@RequestParam("money")String money){
		//将金额传递到第二个页面
		model.addAttribute("money", money);
		//跳转至第二个界面
		return "modules/computer/second";
	}

	@RequestMapping(value = "computer/third")
	public String toThird(Model model,@RequestParam("money")String money,@RequestParam("play")String play){
		model.addAttribute("money", money);
		model.addAttribute("play", play);
		return "modules/computer/third";
	}

	@RequestMapping(value = "computer/fourth")
	public String toFourth(Computer computer, HttpServletRequest request, HttpServletResponse response, Model model){
		List<Computer> list = computerService.findList(computer);
		model.addAttribute("list", list);
		HttpSession session = request.getSession();
		session.setAttribute("result",list);
		return "modules/computer/fourth";
	}

	@RequestMapping(value = "computer/finally")
	@ResponseBody
	public String toFinally(String[] imgIds,HttpServletRequest request, HttpServletResponse response, Model model){
		HttpSession session = request.getSession();
		List<Computer> list = (List<Computer>) session.getAttribute("result");
		List<Computer> result = new ArrayList<Computer>();
		for (int i = 0; i < list.size(); i++) {
			for (int j = 0; j < imgIds.length; j++) {
				if(imgIds[j].equals(list.get(i).getId())){
					result.add(list.get(i));
				}
			}
		}
		session.setAttribute("finallyList",result);
		model.addAttribute("finallyList",list);
		return "success";
	}

	@RequestMapping(value = "computer/finallyPage")
	public String toFinallyPage(HttpServletRequest request, HttpServletResponse response, Model model){
		HttpSession session = request.getSession();
		List<Computer> list = (List<Computer>) session.getAttribute("finallyList");
		model.addAttribute("finallyList",list);
		return "modules/computer/finally";
	}
	
}
