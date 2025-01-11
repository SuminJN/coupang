package com.example.controller.form;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@NoArgsConstructor
@Setter
public class AddProductForm {
    private String name;
    private String description;
    private int price;
    private int stock;
}
