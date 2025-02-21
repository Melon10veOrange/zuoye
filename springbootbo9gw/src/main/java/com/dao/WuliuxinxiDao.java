package com.dao;

import com.entity.WuliuxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.WuliuxinxiVO;
import com.entity.view.WuliuxinxiView;


/**
 * 物流信息
 * 
 * @author 
 * @email 
 * @date 2023-03-07 11:53:55
 */
public interface WuliuxinxiDao extends BaseMapper<WuliuxinxiEntity> {
	
	List<WuliuxinxiVO> selectListVO(@Param("ew") Wrapper<WuliuxinxiEntity> wrapper);
	
	WuliuxinxiVO selectVO(@Param("ew") Wrapper<WuliuxinxiEntity> wrapper);
	
	List<WuliuxinxiView> selectListView(@Param("ew") Wrapper<WuliuxinxiEntity> wrapper);

	List<WuliuxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<WuliuxinxiEntity> wrapper);
	
	WuliuxinxiView selectView(@Param("ew") Wrapper<WuliuxinxiEntity> wrapper);
	

}
