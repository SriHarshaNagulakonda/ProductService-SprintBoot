package com.example.productservice.inheritance.tableperclass;

import jakarta.persistence.DiscriminatorValue;
import jakarta.persistence.Entity;
import lombok.Data;

@Data
@Entity(name="tpc_instructor")
public class Instructor extends User {
    String specialization;
}
