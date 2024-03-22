package com.entity.vo;

import com.entity.ZhandianxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 站点信息
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2023-03-07 11:53:55
 */
public class ZhandianxinxiVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 服务范围
	 */
	
	private String fuwufanwei;
		
	/**
	 * 图片
	 */
	
	private String tupian;
		
	/**
	 * 地区
	 */
	
	private String diqu;
		
	/**
	 * 站点地址
	 */
	
	private String zhandiandizhi;
		
	/**
	 * 咨询电话
	 */
	
	private String zixundianhua;
		
	/**
	 * 站点介绍
	 */
	
	private String zhandianjieshao;
				
	
	/**
	 * 设置：服务范围
	 */
	 
	public void setFuwufanwei(String fuwufanwei) {
		this.fuwufanwei = fuwufanwei;
	}
	
	/**
	 * 获取：服务范围
	 */
	public String getFuwufanwei() {
		return fuwufanwei;
	}
				
	
	/**
	 * 设置：图片
	 */
	 
	public void setTupian(String tupian) {
		this.tupian = tupian;
	}
	
	/**
	 * 获取：图片
	 */
	public String getTupian() {
		return tupian;
	}
				
	
	/**
	 * 设置：地区
	 */
	 
	public void setDiqu(String diqu) {
		this.diqu = diqu;
	}
	
	/**
	 * 获取：地区
	 */
	public String getDiqu() {
		return diqu;
	}
				
	
	/**
	 * 设置：站点地址
	 */
	 
	public void setZhandiandizhi(String zhandiandizhi) {
		this.zhandiandizhi = zhandiandizhi;
	}
	
	/**
	 * 获取：站点地址
	 */
	public String getZhandiandizhi() {
		return zhandiandizhi;
	}
				
	
	/**
	 * 设置：咨询电话
	 */
	 
	public void setZixundianhua(String zixundianhua) {
		this.zixundianhua = zixundianhua;
	}
	
	/**
	 * 获取：咨询电话
	 */
	public String getZixundianhua() {
		return zixundianhua;
	}
				
	
	/**
	 * 设置：站点介绍
	 */
	 
	public void setZhandianjieshao(String zhandianjieshao) {
		this.zhandianjieshao = zhandianjieshao;
	}
	
	/**
	 * 获取：站点介绍
	 */
	public String getZhandianjieshao() {
		return zhandianjieshao;
	}
			
}
