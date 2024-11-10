package com.example.productservice.inheritance.singletable;

import jakarta.persistence.DiscriminatorValue;
import jakarta.persistence.Entity;
import lombok.Data;

@Data
@Entity(name="st_instructor")
@DiscriminatorValue(value = "3")
public class Instructor extends User {
    String specialization;
}
