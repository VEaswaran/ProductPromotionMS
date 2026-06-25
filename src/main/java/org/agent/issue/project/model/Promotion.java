package org.agent.issue.project.model;

import jakarta.persistence.*;

@Entity
@Table(name = "promotions")
public class Promotion {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "account_id", nullable = false)
    private String accountId;

    @Column(nullable = false)
    private String name;

    @Column
    private String description;

    @Column(name = "discount_percent")
    private Double discountPercent;

    public Promotion() {}

    public Promotion(String accountId, String name, String description, Double discountPercent) {
        this.accountId = accountId;
        this.name = name;
        this.description = description;
        this.discountPercent = discountPercent;
    }

    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }

    public String getAccountId() { return accountId; }
    public void setAccountId(String accountId) { this.accountId = accountId; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }

    public Double getDiscountPercent() { return discountPercent; }
    public void setDiscountPercent(Double discountPercent) { this.discountPercent = discountPercent; }
}

