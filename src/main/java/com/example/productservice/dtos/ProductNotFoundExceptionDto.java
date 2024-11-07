package com.example.productservice.dtos;

import lombok.Data;

@Data
public class ProductNotFoundExceptionDto {
    Long id;
    String message;
}
