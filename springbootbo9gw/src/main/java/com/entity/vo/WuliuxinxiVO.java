package com.entity.vo;

import com.entity.WuliuxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 物流信息
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2023-03-07 11:53:55
 */
public class WuliuxinxiVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 物品名称
	 */
	
	private String wupinmingcheng;
		
	/**
	 * 物流类型
	 */
	
	private String wuliuleixing;
		
	/**
	 * 费用
	 */
	
	private Float feiyong;
		
	/**
	 * 用户名
	 */
	
	private String yonghuming;
		
	/**
	 * 姓名
	 */
	
	private String xingming;
		
	/**
	 * 物流信息
	 */
	
	private String wuliuxinxi;
		
	/**
	 * 配送时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date peisongshijian;
				
	
	/**
	 * 设置：物品名称
	 */
	 
	public void setWupinmingcheng(String wupinmingcheng) {
		this.wupinmingcheng = wupinmingcheng;
	}
	
	/**
	 * 获取：物品名称
	 */
	public String getWupinmingcheng() {
		return wupinmingcheng;
	}
				
	
	/**
	 * 设置：物流类型
	 */
	 
	public void setWuliuleixing(String wuliuleixing) {
		this.wuliuleixing = wuliuleixing;
	}
	
	/**
	 * 获取：物流类型
	 */
	public String getWuliuleixing() {
		return wuliuleixing;
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
	 * 设置：用户名
	 */
	 
	public void setYonghuming(String yonghuming) {
		this.yonghuming = yonghuming;
	}
	
	/**
	 * 获取：用户名
	 */
	public String getYonghuming() {
		return yonghuming;
	}
				
	
	/**
	 * 设置：姓名
	 */
	 
	public void setXingming(String xingming) {
		this.xingming = xingming;
	}
	
	/**
	 * 获取：姓名
	 */
	public String getXingming() {
		return xingming;
	}
				
	
	/**
	 * 设置：物流信息
	 */
	 
	public void setWuliuxinxi(String wuliuxinxi) {
		this.wuliuxinxi = wuliuxinxi;
	}
	
	/**
	 * 获取：物流信息
	 */
	public String getWuliuxinxi() {
		return wuliuxinxi;
	}
				
	
	/**
	 * 设置：配送时间
	 */
	 
	public void setPeisongshijian(Date peisongshijian) {
		this.peisongshijian = peisongshijian;
	}
	
	/**
	 * 获取：配送时间
	 */
	public Date getPeisongshijian() {
		return peisongshijian;
	}
			
}
