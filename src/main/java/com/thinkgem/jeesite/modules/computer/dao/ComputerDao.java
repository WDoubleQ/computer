/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.computer.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.computer.entity.Computer;

/**
 * 购机指导DAO接口
 * @author lijin
 * @version 2020-04-20
 */
@MyBatisDao
public interface ComputerDao extends CrudDao<Computer> {
	
}