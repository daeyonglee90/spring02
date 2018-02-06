package com.example.spring02.model.shop.dao;

import java.util.List;

import com.example.spring02.model.shop.dto.ProductVO;

public interface ProductDAO {

	// 01. 상품목록
	public List<ProductVO> listProduct();
	// 02. 상품상세
	public ProductVO detailProduct(int productId);
	// 03. 상품수정
	public void updateProduct(ProductVO vo);
	// 04. 상품삭제
	public void deleteProduct(int productId);
}
