package com.yichen.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.yichen.mapper.PersonMapper;
import com.yichen.model.Page;
import com.yichen.model.PersonVo;
import com.yichen.service.PersonService;

@Service
public class PersonServiceImpl implements PersonService {
	@Resource
	private PersonMapper personMapper;
	
	@Override
	public List<PersonVo> findPersons(Page page) {
		return personMapper.querPersons(page);
	}

	@Override
	public int savePerson(PersonVo personVo) {
		return personMapper.insertPerson(personVo);
	}

	@Override
	public int modifyPerson(PersonVo personVo) {
		return personMapper.updatePerson(personVo);
	}

	@Override
	public int deletePerson(String id) {
		return personMapper.delPerson(id);
	}

	@Override
	public PersonVo findPersonById(String id) {
		return personMapper.queryPersonById(id);
	}

	@Override
	public int findPersonVoCounts() {
		return personMapper.queryPersonVoCounts();
	}

	@Override
	public int batchDel(List<String> list) {
		return personMapper.batchDel(list);
	}

}
