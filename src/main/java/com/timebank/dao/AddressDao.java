package com.timebank.dao;

import java.util.List;

import com.timebank.model.Address;
import com.timebank.model.User;

public interface AddressDao {
	void addAddress(Address address);
	void updateAddress(int idUser, Address newAddress);
	void deleteAddress(int idUser);
	Address getAddress(int idUser);
	List<Address> getAddresses(int idUser);
	
}
