package com.vomtung.converter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;

import com.vomtung.entities.Category;
import com.vomtung.service.CategoryService;

public class CategoryConverter implements Converter<String, Category>{

    @Autowired
    private CategoryService categoryService;

    public Category convert(String id) {
        return categoryService.findById(Long.valueOf(id));
    }
}
