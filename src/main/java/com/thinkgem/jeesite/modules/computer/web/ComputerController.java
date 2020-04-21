/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.computer.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.thinkgem.jeesite.common.config.Global;
import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.modules.computer.entity.Computer;
import com.thinkgem.jeesite.modules.computer.service.ComputerService;

import java.util.List;

/**
 * 购机指导Controller
 * @author lijin
 * @version 2020-04-20
 */
@Controller
@RequestMapping(value = "${adminPath}/computer/computer")
public class ComputerController extends BaseController {

	@Autowired
	private ComputerService computerService;
	
	@ModelAttribute
	public Computer get(@RequestParam(required=false) String id) {
		Computer entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = computerService.get(id);
		}
		if (entity == null){
			entity = new Computer();
		}
		return entity;
	}
	
	@RequiresPermissions("computer:computer:view")
	@RequestMapping(value = {"list", ""})
	public String list(Computer computer, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Computer> page = computerService.findPage(new Page<Computer>(request, response), computer); 
		model.addAttribute("page", page);
		return "modules/computer/computerList";
	}

	@RequiresPermissions("computer:computer:view")
	@RequestMapping(value = "form")
	public String form(Computer computer, Model model) {
		model.addAttribute("computer", computer);
		return "modules/computer/computerForm";
	}

	@RequiresPermissions("computer:computer:edit")
	@RequestMapping(value = "save")
	public String save(Computer computer, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, computer)){
			return form(computer, model);
		}
		computerService.save(computer);
		addMessage(redirectAttributes, "保存购机指导成功");
		return "redirect:"+Global.getAdminPath()+"/computer/computer/?repage";
	}
	
	@RequiresPermissions("computer:computer:edit")
	@RequestMapping(value = "delete")
	public String delete(Computer computer, RedirectAttributes redirectAttributes) {
		computerService.delete(computer);
		addMessage(redirectAttributes, "删除购机指导成功");
		return "redirect:"+Global.getAdminPath()+"/computer/computer/?repage";
	}



}