package com.gxufe.smarcampus.repository.Impl;

import java.sql.Timestamp;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gxufe.smarcampus.models.SysCampus;
import com.gxufe.smarcampus.models.SysClass;
import com.gxufe.smarcampus.models.SysCollege;
import com.gxufe.smarcampus.models.SysProfessional;
import com.gxufe.smarcampus.models.SysStudent;
import com.gxufe.smarcampus.models.SysTeacher;
import com.gxufe.smarcampus.models.SysUsers;
import com.gxufe.smarcampus.repository.SysTeacherDao;
import com.gxufe.smarcampus.repository.SysUsersDao;

@Repository
public class SysTeacherDaoImpl extends BaseDaoImpl<SysTeacher, Integer> implements SysTeacherDao {
	
	public SysTeacherDaoImpl() {
		this.entityClass = SysTeacher.class;
	}
	
}
