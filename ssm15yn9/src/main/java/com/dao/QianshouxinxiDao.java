package com.dao;

import com.entity.QianshouxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.QianshouxinxiVO;
import com.entity.view.QianshouxinxiView;


/**
 * 签收信息
 * 
 * @author 
 * @email 
 * @date 2021-04-21 21:22:31
 */
public interface QianshouxinxiDao extends BaseMapper<QianshouxinxiEntity> {
	
	List<QianshouxinxiVO> selectListVO(@Param("ew") Wrapper<QianshouxinxiEntity> wrapper);
	
	QianshouxinxiVO selectVO(@Param("ew") Wrapper<QianshouxinxiEntity> wrapper);
	
	List<QianshouxinxiView> selectListView(@Param("ew") Wrapper<QianshouxinxiEntity> wrapper);

	List<QianshouxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<QianshouxinxiEntity> wrapper);
	
	QianshouxinxiView selectView(@Param("ew") Wrapper<QianshouxinxiEntity> wrapper);
	
}
