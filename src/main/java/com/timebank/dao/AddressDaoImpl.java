package com.timebank.dao;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.timebank.model.Address;
import com.timebank.model.User;

@Repository
public class AddressDaoImpl implements AddressDao {
	
	  @Autowired
	    private SessionFactory sessionFactory;
	  
	  @Autowired
	  private HttpSession session;

	
	  private Session getCurrentSession () {
	        return sessionFactory.getCurrentSession();
	    }

	@Override
	public void addAddress(Address address) {
		User user = (User) session.getAttribute("user");
		address.setUser(user);
		getCurrentSession().save(address);
	
		
	}

	@Override
	public void updateAddress(int idUser, Address newAddress) {
		
		Address addressToUpdate =getAddress(idUser);
		addressToUpdate.setStreet(newAddress.getStreet());
		addressToUpdate.setCity(newAddress.getCity());
		addressToUpdate.setContinent(newAddress.getCity());
		addressToUpdate.setCountry(newAddress.getCountry());
		getCurrentSession().merge(addressToUpdate);
			
	}

	@Override
	public void deleteAddress(int idUser) {
		
        Address address =  getAddress(idUser);
        if(address!=null){
        	getCurrentSession().delete(address);
        }
		
	}

	@Override
	public List<Address> getAddresses(int idUser) {
	        
	    /// Address address =(Address)getCurrentSession().get(Address.class, idUser);
	    // return address;
		
		User user = (User)session.getAttribute("user");
		String hql = "FROM addresses a WHERE a.user_id = :user_id";
		Query query = getCurrentSession().createQuery(hql);
		query.setParameter(user.getId(),10);
		List<Address> results = query.list();
		return results;
	}

	@Override
	public Address getAddress(int idUser) {
		// TODO Auto-generated method stub
		return null;
	}

	
	/*@Override
	public List<Address> getAddress(int idAddress) {
		User user = (User)session.getAttribute("user");
		String hql = "FROM addresses a WHERE a.user_id = :user_id";
		Query query = getCurrentSession().createQuery(hql);
		query.setParameter(user.getId(),10);
		
		List<Address> results = query.list();
		/*for(int i=0;i<results.size();i++){
		System.out.println("results"+results.get(i).getStreet()+results.get(i).getCity()
				+results.get(i).getCountry()+results.get(i).getContinent()+"\n");
		
		}
	    // Address address =(Address)getCurrentSession().get(Address.class, idAddress);
	   //  Address address =(Address)getCurrentSession().createQuery(" from address ");//.get(Address.class, idAddress);
	     return results;
	}*/

}
