package com.example.productservice.inheritance.joinedtable;

import jakarta.persistence.Entity;
import lombok.Data;

@Data
@Entity(name="jt_instructor")
public class Instructor extends User {
    String specialization;

}
