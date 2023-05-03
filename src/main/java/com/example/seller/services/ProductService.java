package com.example.seller.services;

import com.example.seller.models.Product;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductService {
    private List<Product> products = new ArrayList<>();
    private long ID = 0;

    {
        products.add(new Product(++ID, "book 1", "new book 1", 2000, "moscow", "tom"));
        products.add(new Product(++ID, "book 2", "new book 2", 2100, "moscow", "jane"));
        products.add(new Product(++ID, "book 3", "new book 3", 2200, "moscow", "jake"));
    }

    public List<Product> getProducts() {
        return products;
    }

    public void addProduct(Product newProduct) {
        newProduct.setId(++ID);
        products.add(newProduct);
    }

    public Product getProductById(Long id) {
        for (Product product: products) {
            if (product.getId().equals(id)) {
                return product;
            }
        }
        return null;
    }

    public void removeProduct(Long id) {
        products.removeIf(product -> product.getId().equals(id));
    }
}
