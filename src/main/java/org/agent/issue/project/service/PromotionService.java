package org.agent.issue.project.service;

import org.agent.issue.project.model.Promotion;

import java.util.List;

public interface PromotionService {

    List<Promotion> getPromotionsByAccountId(String accountId);
}

