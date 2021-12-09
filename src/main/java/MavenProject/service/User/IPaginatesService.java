package MavenProject.service.User;

import org.springframework.stereotype.Service;

import MavenProject.dto.PaginatesDto;

@Service
public interface IPaginatesService {
	public PaginatesDto GetInfoPaginaes(int totaData, int limit, int currentPage);
	
}