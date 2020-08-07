package com.dbal.app.emp.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.dbal.app.emp.mapper.EmpMapper;
import com.dbal.app.emp.service.EmpService;
import com.dbal.app.model.EmpVO;


@Service
public class EmpServiceImpl implements EmpService {

	@Autowired EmpMapper empDAO;
	
	@Override
	public EmpVO getEmp(EmpVO empVO) {
		return empDAO.getEmp(empVO);
	}

	@Override
	public void bookInsert(EmpVO empVO) {
		empDAO.bookInsert(empVO);
		
	}

	@Override
	public List<EmpVO> getBookList(EmpVO empVO) {
		return empDAO.getBookList(empVO);
	}

	@Override
	public List<EmpVO> checkStatus(EmpVO empVO) {
		return empDAO.checkStatus(empVO);
	}




}
