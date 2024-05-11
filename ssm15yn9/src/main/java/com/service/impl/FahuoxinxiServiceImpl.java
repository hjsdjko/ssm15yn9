package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.FahuoxinxiDao;
import com.entity.FahuoxinxiEntity;
import com.service.FahuoxinxiService;
import com.entity.vo.FahuoxinxiVO;
import com.entity.view.FahuoxinxiView;

@Service("fahuoxinxiService")
public class FahuoxinxiServiceImpl extends ServiceImpl<FahuoxinxiDao, FahuoxinxiEntity> implements FahuoxinxiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<FahuoxinxiEntity> page = this.selectPage(
                new Query<FahuoxinxiEntity>(params).getPage(),
                new EntityWrapper<FahuoxinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<FahuoxinxiEntity> wrapper) {
		  Page<FahuoxinxiView> page =new Query<FahuoxinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<FahuoxinxiVO> selectListVO(Wrapper<FahuoxinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public FahuoxinxiVO selectVO(Wrapper<FahuoxinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<FahuoxinxiView> selectListView(Wrapper<FahuoxinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public FahuoxinxiView selectView(Wrapper<FahuoxinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
