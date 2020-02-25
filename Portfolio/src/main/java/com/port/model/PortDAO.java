package com.port.model;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PortDAO implements InterPortDAO {
	
	@Autowired   // Type에 따라 알아서 Bean 을 주입해준다.
	private SqlSessionTemplate sqlsession;

}
