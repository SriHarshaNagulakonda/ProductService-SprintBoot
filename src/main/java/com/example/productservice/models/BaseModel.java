package com.example.productservice.models;

import jakarta.persistence.Id;
import jakarta.persistence.MappedSuperclass;
import lombok.Data;

@Data
@MappedSuperclass
public class BaseModel {
    @Id
    Long id;
    String title;
}
