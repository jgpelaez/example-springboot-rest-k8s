package com.kubekub.example.products.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kubekub.example.products.model.Product;
import com.kubekub.example.products.repository.ProductRepository;

@Service
public class ProductService {

	@Autowired
	ProductRepository productRepository;

	public List<Product> findByName(String componentName) {
		return productRepository.findByName(componentName);
	}
}