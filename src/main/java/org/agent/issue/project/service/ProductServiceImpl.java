package org.agent.issue.project.service;

import org.agent.issue.project.model.Product;
import org.agent.issue.project.repository.ProductRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {

    private final ProductRepository productRepository;

    public ProductServiceImpl(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    @Override
    public List<Product> getProductsByAccountId(String accountId) {
        return productRepository.findByAccountId(accountId);
    }
}
