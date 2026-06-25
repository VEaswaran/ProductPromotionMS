package org.agent.issue.project.controller;

import org.agent.issue.project.model.Product;
import org.agent.issue.project.service.ProductService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/products")
public class ProductController {

    private final ProductService productService;

    public ProductController(ProductService productService) {
        this.productService = productService;
    }

    /**
     * GET /api/products/{accountId}
     * Returns all products linked to the given account.
     * Responds with 200 when products are found, 404 when none are found,
     * and 500 when an unexpected error occurs.
     */
    @GetMapping("/{accountId}")
    public ResponseEntity<List<Product>> getProductsByAccountId(
            @PathVariable String accountId) {

        List<Product> products = productService.getProductsByAccountId(accountId);

        if (products == null || products.isEmpty()) {
            return ResponseEntity.notFound().build();
        }
        return ResponseEntity.ok(products);
    }
}
