package com.dao;

import com.entity.FahuoxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.FahuoxinxiVO;
import com.entity.view.FahuoxinxiView;


/**
 * 发货信息
 * 
 * @author 
 * @email 
 * @date 2021-04-21 21:22:31
 */
public interface FahuoxinxiDao extends BaseMapper<FahuoxinxiEntity> {
	
	List<FahuoxinxiVO> selectListVO(@Param("ew") Wrapper<FahuoxinxiEntity> wrapper);
	
	FahuoxinxiVO selectVO(@Param("ew") Wrapper<FahuoxinxiEntity> wrapper);
	
	List<FahuoxinxiView> selectListView(@Param("ew") Wrapper<FahuoxinxiEntity> wrapper);

	List<FahuoxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<FahuoxinxiEntity> wrapper);
	
	FahuoxinxiView selectView(@Param("ew") Wrapper<FahuoxinxiEntity> wrapper);
	
}
