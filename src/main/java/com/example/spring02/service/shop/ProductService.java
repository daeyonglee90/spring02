package com.example.spring02.service.shop;

import java.util.List;

import com.example.spring02.model.shop.dto.ProductVO;

public interface ProductService {

	// 01. 상품 목록
	public List<ProductVO> listProduct();
	// 02. 상품 상세
	public ProductVO detailProduct(int productId);
	// 03. 상품 수정
	public void updateProduct(ProductVO vo);
	// 04. 상품 삭제
	public void deleteProduct(int productId);
	
}
