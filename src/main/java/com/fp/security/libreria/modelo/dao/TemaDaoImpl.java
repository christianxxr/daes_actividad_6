package com.fp.security.libreria.modelo.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fp.security.libreria.model.entityBeans.Tema;
import com.fp.security.libreria.model.repository.TemaRepository;

@Repository
public class TemaDaoImpl implements TemaDao {

	@Autowired
	TemaRepository trepo;

	@Override
	public Tema verUno(int idTema) {
		// TODO Auto-generated method stub
		return trepo.findById(idTema).orElse(null);
	}

	@Override
	public List<Tema> findAll() {
		// TODO Auto-generated method stub
		return trepo.findAll();
	}

	@Override
	public int altaTema(Tema tema) {
		// TODO Auto-generated method stub
		if (verUno(tema.getIdTema()) == null) {
			trepo.save(tema);
			return 1;
		} else
			return 0;
	}

}
