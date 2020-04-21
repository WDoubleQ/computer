/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.computer.entity;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 购机指导Entity
 * @author lijin
 * @version 2020-04-21
 */
public class Computer extends DataEntity<Computer> {
	
	private static final long serialVersionUID = 1L;
	private String recRate;		// 推荐率
	private String brand;		// 品牌
	private String model;		// 型号
	private String flashPoint;		// 闪光点
	private String used;		// 使用场景
	private String upgrade;		// 升级
	private String price;		// 价格
	private String playAttr;		// 娱乐属性
	private String cpu;		// cpu
	private String screen;		// 屏幕
	private String gpu;		// gpu
	private String hardDisk;		// 硬盘
	private String ram;		// 内存条
	private String port;		// 端口
	private String image;		// 图片
	private String cpuAttr;		// cpu属性
	private String screenAttr;		// 屏幕属性
	
	public Computer() {
		super();
	}

	public Computer(String id){
		super(id);
	}

	@Length(min=0, max=11, message="推荐率长度必须介于 0 和 11 之间")
	public String getRecRate() {
		return recRate;
	}

	public void setRecRate(String recRate) {
		this.recRate = recRate;
	}
	
	@Length(min=0, max=64, message="品牌长度必须介于 0 和 64 之间")
	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}
	
	@Length(min=0, max=64, message="型号长度必须介于 0 和 64 之间")
	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}
	
	@Length(min=0, max=64, message="闪光点长度必须介于 0 和 64 之间")
	public String getFlashPoint() {
		return flashPoint;
	}

	public void setFlashPoint(String flashPoint) {
		this.flashPoint = flashPoint;
	}
	
	@Length(min=0, max=64, message="使用场景长度必须介于 0 和 64 之间")
	public String getUsed() {
		return used;
	}

	public void setUsed(String used) {
		this.used = used;
	}
	
	@Length(min=0, max=64, message="升级长度必须介于 0 和 64 之间")
	public String getUpgrade() {
		return upgrade;
	}

	public void setUpgrade(String upgrade) {
		this.upgrade = upgrade;
	}
	
	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}
	
	@Length(min=0, max=64, message="娱乐属性长度必须介于 0 和 64 之间")
	public String getPlayAttr() {
		return playAttr;
	}

	public void setPlayAttr(String playAttr) {
		this.playAttr = playAttr;
	}
	
	@Length(min=0, max=64, message="cpu长度必须介于 0 和 64 之间")
	public String getCpu() {
		return cpu;
	}

	public void setCpu(String cpu) {
		this.cpu = cpu;
	}
	
	@Length(min=0, max=64, message="屏幕长度必须介于 0 和 64 之间")
	public String getScreen() {
		return screen;
	}

	public void setScreen(String screen) {
		this.screen = screen;
	}
	
	@Length(min=0, max=64, message="gpu长度必须介于 0 和 64 之间")
	public String getGpu() {
		return gpu;
	}

	public void setGpu(String gpu) {
		this.gpu = gpu;
	}
	
	@Length(min=0, max=64, message="硬盘长度必须介于 0 和 64 之间")
	public String getHardDisk() {
		return hardDisk;
	}

	public void setHardDisk(String hardDisk) {
		this.hardDisk = hardDisk;
	}
	
	@Length(min=0, max=64, message="内存条长度必须介于 0 和 64 之间")
	public String getRam() {
		return ram;
	}

	public void setRam(String ram) {
		this.ram = ram;
	}
	
	@Length(min=0, max=64, message="端口长度必须介于 0 和 64 之间")
	public String getPort() {
		return port;
	}

	public void setPort(String port) {
		this.port = port;
	}
	
	@Length(min=0, max=2000, message="图片长度必须介于 0 和 2000 之间")
	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
	
	@Length(min=0, max=64, message="cpu属性长度必须介于 0 和 64 之间")
	public String getCpuAttr() {
		return cpuAttr;
	}

	public void setCpuAttr(String cpuAttr) {
		this.cpuAttr = cpuAttr;
	}
	
	@Length(min=0, max=64, message="屏幕属性长度必须介于 0 和 64 之间")
	public String getScreenAttr() {
		return screenAttr;
	}

	public void setScreenAttr(String screenAttr) {
		this.screenAttr = screenAttr;
	}
	
}