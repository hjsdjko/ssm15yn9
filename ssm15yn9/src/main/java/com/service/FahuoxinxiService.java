package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.FahuoxinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.FahuoxinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.FahuoxinxiView;


/**
 * 发货信息
 *
 * @author 
 * @email 
 * @date 2021-04-21 21:22:31
 */
public interface FahuoxinxiService extends IService<FahuoxinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<FahuoxinxiVO> selectListVO(Wrapper<FahuoxinxiEntity> wrapper);
   	
   	FahuoxinxiVO selectVO(@Param("ew") Wrapper<FahuoxinxiEntity> wrapper);
   	
   	List<FahuoxinxiView> selectListView(Wrapper<FahuoxinxiEntity> wrapper);
   	
   	FahuoxinxiView selectView(@Param("ew") Wrapper<FahuoxinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<FahuoxinxiEntity> wrapper);
   	
}

