package com.my.humor.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.my.humor.dao.AdminDAO;

@Service
public class AdminServiceImpl implements AdminService{

	@Inject
	private AdminDAO dao;
	
}
