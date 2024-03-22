package com.entity.model;

import com.entity.ShoufeibiaozhunEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 收费标准
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2023-03-07 11:53:55
 */
public class ShoufeibiaozhunModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
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
