package com.port.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.port.model.InterPortDAO;

@Service
public class PortService implements InterPortService {
	
	@Autowired
	InterPortDAO dao;

}
