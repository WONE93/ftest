package com.dbal.app.emp.mapper;

import java.util.List;

import org.springframework.ui.Model;

import com.dbal.app.model.EmpVO;

public interface EmpMapper {

	public EmpVO getEmp(EmpVO empVO);
	public void bookInsert(EmpVO empVO);
	public List<EmpVO> getBookList(EmpVO empVO);	
	public List<EmpVO> checkStatus(EmpVO empVO);	
}

