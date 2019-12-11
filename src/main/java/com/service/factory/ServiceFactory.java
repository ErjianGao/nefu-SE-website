package com.service.factory;

import com.service.ManagerService;
import com.service.NewsService;

public abstract class ServiceFactory {
    public abstract ManagerService getManagerService();
    public abstract NewsService getNewsService();
}
