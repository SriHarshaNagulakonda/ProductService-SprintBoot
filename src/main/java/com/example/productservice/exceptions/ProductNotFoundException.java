package com.example.productservice.exceptions;

import lombok.Data;

@Data
public class ProductNotFoundException extends Exception {
    private Long id;

    public ProductNotFoundException(Long id, String message) {
        super(message);
        this.id = id;
    }
}
