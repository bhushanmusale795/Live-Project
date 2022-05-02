package com.bhushan.ProjectManagement.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.bhushan.ProjectManagement.entity.Product;

public interface ProductRepo extends JpaRepository<Product,Integer> {


	

}
