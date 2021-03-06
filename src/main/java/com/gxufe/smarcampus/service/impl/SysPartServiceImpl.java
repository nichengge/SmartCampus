package com.gxufe.smarcampus.service.impl;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import com.gxufe.smarcampus.common.PaginationSupport;
import com.gxufe.smarcampus.models.SysPart;
import com.gxufe.smarcampus.models.SysUsers;
import com.gxufe.smarcampus.repository.SysPartDao;
import com.gxufe.smarcampus.repository.SysUsersDao;
import com.gxufe.smarcampus.repository.Impl.SysUsersDaoImpl;
import com.gxufe.smarcampus.service.SysPartService;
import com.gxufe.smarcampus.service.SysUsersService;

@Service
public class SysPartServiceImpl extends BaseServicImpl<SysPart, Integer> implements
SysPartService {
	@Autowired
	public SysPartDao sysPartDao;
	@Override
	public SysPart loadSysPartById(Integer id) {
		// TODO Auto-generated method stub
		return sysPartDao.load(id);
	}
}
