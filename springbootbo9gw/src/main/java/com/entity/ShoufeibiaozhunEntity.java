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
 * 收费标准
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2023-03-07 11:53:55
 */
@TableName("shoufeibiaozhun")
public class ShoufeibiaozhunEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public ShoufeibiaozhunEntity() {
		
	}
	
	public ShoufeibiaozhunEntity(T t) {
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
	 * 收费名称
	 */
					
	private String shoufeimingcheng;
	
	/**
	 * 图片
	 */
					
	private String tupian;
	
	/**
	 * 重量
	 */
					
	private String zhongliang;
	
	/**
	 * 费用
	 */
					
	private Float feiyong;
	
	/**
	 * 重量说明
	 */
					
	private String zhongliangshuoming;
	
	
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
	 * 设置：收费名称
	 */
	public void setShoufeimingcheng(String shoufeimingcheng) {
		this.shoufeimingcheng = shoufeimingcheng;
	}
	/**
	 * 获取：收费名称
	 */
	public String getShoufeimingcheng() {
		return shoufeimingcheng;
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
	 * 设置：重量
	 */
	public void setZhongliang(String zhongliang) {
		this.zhongliang = zhongliang;
	}
	/**
	 * 获取：重量
	 */
	public String getZhongliang() {
		return zhongliang;
	}
	/**
	 * 设置：费用
	 */
	public void setFeiyong(Float feiyong) {
		this.feiyong = feiyong;
	}
	/**
	 * 获取：费用
	 */
	public Float getFeiyong() {
		return feiyong;
	}
	/**
	 * 设置：重量说明
	 */
	public void setZhongliangshuoming(String zhongliangshuoming) {
		this.zhongliangshuoming = zhongliangshuoming;
	}
	/**
	 * 获取：重量说明
	 */
	public String getZhongliangshuoming() {
		return zhongliangshuoming;
	}

}
