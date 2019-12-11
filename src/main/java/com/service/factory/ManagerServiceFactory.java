package com.service.factory;

import com.service.ManagerService;
import com.service.NewsService;
import com.service.impl.ManagerServiceImpl;

public class ManagerServiceFactory extends ServiceFactory {
    private final ManagerService MANAGER_SERVICE = this.create();

    private ManagerService create() {
        return new ManagerServiceImpl();
    }

    @Override
    public ManagerService getManagerService() {
        return MANAGER_SERVICE;
    }

    @Override
    public NewsService getNewsService() {
        return null;
    }
}