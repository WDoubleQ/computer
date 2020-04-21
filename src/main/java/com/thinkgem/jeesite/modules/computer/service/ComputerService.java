/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.computer.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.computer.entity.Computer;
import com.thinkgem.jeesite.modules.computer.dao.ComputerDao;

/**
 * 购机指导Service
 * @author lijin
 * @version 2020-04-20
 */
@Service
@Transactional(readOnly = true)
public class ComputerService extends CrudService<ComputerDao, Computer> {

	public Computer get(String id) {
		return super.get(id);
	}
	
	public List<Computer> findList(Computer computer) {
		return super.findList(computer);
	}
	
	public Page<Computer> findPage(Page<Computer> page, Computer computer) {
		return super.findPage(page, computer);
	}
	
	@Transactional(readOnly = false)
	public void save(Computer computer) {
		super.save(computer);
	}
	
	@Transactional(readOnly = false)
	public void delete(Computer computer) {
		super.delete(computer);
	}
	
}