package com.example.productservice.dtos;

import com.example.productservice.models.Category;
import lombok.Getter;
import lombok.Setter;

//import java.awt.*;

@Getter
@Setter
public class FakeStoreProductDto {
    Long id;
    String title;
    Double price;
    String category;
    String description;
    String image;
}
