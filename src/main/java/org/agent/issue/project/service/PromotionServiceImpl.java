package org.agent.issue.project.service;

import org.agent.issue.project.model.Promotion;
import org.agent.issue.project.repository.PromotionRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PromotionServiceImpl implements PromotionService {

    private final PromotionRepository promotionRepository;

    public PromotionServiceImpl(PromotionRepository promotionRepository) {
        this.promotionRepository = promotionRepository;
    }

    @Override
    public List<Promotion> getPromotionsByAccountId(String accountId) {
        return promotionRepository.findByAccountId(accountId);
    }
}

