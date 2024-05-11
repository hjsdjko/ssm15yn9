package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.QianshouxinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.QianshouxinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.QianshouxinxiView;


/**
 * 签收信息
 *
 * @author 
 * @email 
 * @date 2021-04-21 21:22:31
 */
public interface QianshouxinxiService extends IService<QianshouxinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<QianshouxinxiVO> selectListVO(Wrapper<QianshouxinxiEntity> wrapper);
   	
   	QianshouxinxiVO selectVO(@Param("ew") Wrapper<QianshouxinxiEntity> wrapper);
   	
   	List<QianshouxinxiView> selectListView(Wrapper<QianshouxinxiEntity> wrapper);
   	
   	QianshouxinxiView selectView(@Param("ew") Wrapper<QianshouxinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<QianshouxinxiEntity> wrapper);
   	
}

