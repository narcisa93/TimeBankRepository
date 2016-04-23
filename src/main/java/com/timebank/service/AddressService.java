package com.timebank.service;

import java.util.List;

import com.timebank.model.Address;


public interface AddressService {

	void addAddress(Address address);
	void updateAddress(int idUser, Address newAddress);
	void deleteAddress(int idUser);
	Address getAddress(int idUser);
	List<Address> getAddresses(int idUser);
	
}
