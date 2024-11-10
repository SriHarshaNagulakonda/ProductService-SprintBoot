package com.example.productservice.inheritance.mappedsuperclass;

import jakarta.persistence.Entity;
import lombok.Data;

@Data
@Entity(name="mps_instructor")
public class Instructor extends User {
    String specialization;

}
