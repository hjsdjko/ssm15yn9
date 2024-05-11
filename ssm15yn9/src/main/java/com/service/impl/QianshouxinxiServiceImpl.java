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


import com.dao.QianshouxinxiDao;
import com.entity.QianshouxinxiEntity;
import com.service.QianshouxinxiService;
import com.entity.vo.QianshouxinxiVO;
import com.entity.view.QianshouxinxiView;

@Service("qianshouxinxiService")
public class QianshouxinxiServiceImpl extends ServiceImpl<QianshouxinxiDao, QianshouxinxiEntity> implements QianshouxinxiService {
	

    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<QianshouxinxiEntity> page = this.selectPage(
                new Query<QianshouxinxiEntity>(params).getPage(),
                new EntityWrapper<QianshouxinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<QianshouxinxiEntity> wrapper) {
		  Page<QianshouxinxiView> page =new Query<QianshouxinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<QianshouxinxiVO> selectListVO(Wrapper<QianshouxinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public QianshouxinxiVO selectVO(Wrapper<QianshouxinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<QianshouxinxiView> selectListView(Wrapper<QianshouxinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public QianshouxinxiView selectView(Wrapper<QianshouxinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
