package com.example.productservice.services;

import com.example.productservice.exceptions.ProductNotFoundException;
import com.example.productservice.models.Category;
import com.example.productservice.models.Product;
import com.example.productservice.projections.ProductTitleAndDescription;
import com.example.productservice.repos.CategoryRepo;
import com.example.productservice.repos.ProductRepo;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("SelfProductService")
//@Primary
public class SelfProductService implements ProductService {

    private final CategoryRepo categoryRepo;
    ProductRepo productRepo;

    public SelfProductService(ProductRepo productRepo, CategoryRepo categoryRepo) {
        this.productRepo = productRepo;
        this.categoryRepo = categoryRepo;
    }

    @Override
    public Product getProductById(Long id) throws ProductNotFoundException {
        ProductTitleAndDescription productTitleAndDescription = productRepo.getProductTitleAndDesc(id);
        System.out.println(productTitleAndDescription.getDescription() +" - "+productTitleAndDescription.getTitle());
        return productRepo.findById(id).get();
    }

    @Override
    public List<Product> getAllProducts() {
        return List.of();
    }

    @Override
    public Product replaceProduct(Long id, Product product) {
        return null;
    }

    @Override
    public Product deleteProduct(Long id) {
        return null;
    }

    @Override
    public Product createProduct(Product product) {
//        Category category = product.getCategory();
//        if(category.getId() == null) {
//            Category newCategory = categoryRepo.save(category);
//            product.setCategory(newCategory);
//        } else {
//
//        }
        return productRepo.save(product);
    }
}
