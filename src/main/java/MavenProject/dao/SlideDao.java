package MavenProject.dao;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import MavenProject.entity.Account;
import MavenProject.entity.MapperAccount;
import MavenProject.entity.MapperSlides;
import MavenProject.entity.Slides;
@Repository
public class SlideDao {
	@Autowired
	JdbcTemplate _jdbcTemplate;
	
	public List<Slides> GetDataSlide() {
		List<Slides> list = new ArrayList<Slides>();
		String sql = "SELECT * FROM SLIDES";
		list = _jdbcTemplate.query(sql, new MapperSlides());
		return list;
	}
}
