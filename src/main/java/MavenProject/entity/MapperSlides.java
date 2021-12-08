package MavenProject.entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperSlides implements RowMapper<Slides> {
	public Slides mapRow(ResultSet rs, int rowNum) throws SQLException {
		Slides slide = new Slides();
		slide.setId(rs.getInt(1));
		slide.setImage(rs.getString(2));
		return slide;
	}
	
}
