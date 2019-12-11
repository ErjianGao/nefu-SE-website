package com.service.factory;

import com.service.ManagerService;
import com.service.NewsService;
import com.service.impl.NewsServiceImpl;

public class NewsServiceFactory extends ServiceFactory {
    private final NewsService newsService = this.create();

    private NewsService create() {
        return new NewsServiceImpl();
    }

    @Override
    public NewsService getNewsService() {
        return newsService;
    }

    @Override
    public ManagerService getManagerService() {
        return null;
    }
}
