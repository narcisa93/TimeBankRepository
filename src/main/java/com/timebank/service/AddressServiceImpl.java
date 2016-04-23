package com.timebank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.timebank.dao.AddressDao;
import com.timebank.model.Address;

@Service
@Transactional
public class AddressServiceImpl implements AddressService{

	@Autowired
	private AddressDao addressDao;
	
	@Override
	public void addAddress(Address address) {
		addressDao.addAddress(address);
		
	}

	@Override
	public void updateAddress(int idUser, Address idAddress) {
		addressDao.updateAddress(idUser, idAddress);
	}

	@Override
	public void deleteAddress(int idUser) {
		addressDao.deleteAddress(idUser);
		
	}

	@Override
	public List<Address> getAddresses(int idUser) {	
		return addressDao.getAddresses(idUser);
	}

	@Override
	public Address getAddress(int idUser) {
		return addressDao.getAddress(idUser);
	}
	
	

	

}
