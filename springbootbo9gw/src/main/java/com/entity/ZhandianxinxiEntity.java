package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 站点信息
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2023-03-07 11:53:55
 */
@TableName("zhandianxinxi")
public class ZhandianxinxiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public ZhandianxinxiEntity() {
		
	}
	
	public ZhandianxinxiEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 站点名称
	 */
					
	private String zhandianmingcheng;
	
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
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：站点名称
	 */
	public void setZhandianmingcheng(String zhandianmingcheng) {
		this.zhandianmingcheng = zhandianmingcheng;
	}
	/**
	 * 获取：站点名称
	 */
	public String getZhandianmingcheng() {
		return zhandianmingcheng;
	}
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
