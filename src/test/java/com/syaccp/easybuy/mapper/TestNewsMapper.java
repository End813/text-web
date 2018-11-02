package com.syaccp.easybuy.mapper;
import java.io.IOException;
import java.io.Reader;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

public class TestNewsMapper {

	
	private static SqlSessionFactory sessionFactory;
	
	static {
		SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
		Reader reader = null;
		try {
			reader = Resources.getResourceAsReader("mybatis-config.xml");
			sessionFactory = builder.build(reader);
		} catch (IOException e) {

			e.printStackTrace();
		}

	}
	
	@Test
	public void test() {
		
		try {
			SqlSession session = sessionFactory.openSession();
			NewsMapper mapper = session.getMapper(NewsMapper.class);
			mapper.deleteByPrimaryKey(706);
			session.commit();
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}
	}

}
