package com.fp.security.libreria.modelo.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fp.security.libreria.model.entityBeans.LineasPedido;
import com.fp.security.libreria.model.repository.LineasPedidoRepository;

@Repository
public class LineasPedidoDaoImpl implements LineasPedidoDao {

	@Autowired
	LineasPedidoRepository lprepo;

	@Override
	public LineasPedido altaLineaPedido(LineasPedido lineasPedido) {
		// TODO Auto-generated method stub
		return lprepo.save(lineasPedido);
	}

}
