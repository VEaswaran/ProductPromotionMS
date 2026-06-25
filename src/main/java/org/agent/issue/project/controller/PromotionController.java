package org.agent.issue.project.controller;

import org.agent.issue.project.model.Promotion;
import org.agent.issue.project.service.PromotionService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/promotions")
public class PromotionController {

    private final PromotionService promotionService;

    public PromotionController(PromotionService promotionService) {
        this.promotionService = promotionService;
    }

    /**
     * GET /api/promotions/{accountId}
     * Returns all promotions linked to the given account.
     * Responds with 404 when no promotions are found.
     */
    @GetMapping("/{accountId}")
    public ResponseEntity<List<Promotion>> getPromotionsByAccountId(
            @PathVariable String accountId) {

        List<Promotion> promotions = promotionService.getPromotionsByAccountId(accountId);

        if (promotions == null || promotions.isEmpty()) {
            return ResponseEntity.notFound().build();
        }
        return ResponseEntity.ok(promotions);
    }
}

