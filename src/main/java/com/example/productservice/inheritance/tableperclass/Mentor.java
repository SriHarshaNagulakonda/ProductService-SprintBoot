package com.example.productservice.inheritance.tableperclass;

import jakarta.persistence.DiscriminatorValue;
import jakarta.persistence.Entity;
import lombok.Data;

@Data
@Entity(name="tpc_mentor")
public class Mentor extends User {
    String company;
    int avgRating;
}
