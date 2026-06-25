package org.agent.issue.project.service;

import org.agent.issue.project.model.Product;

import java.util.List;

public interface ProductService {

    List<Product> getProductsByAccountId(String accountId);
}
