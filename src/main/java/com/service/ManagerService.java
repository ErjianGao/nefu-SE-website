package com.service;

import com.entity.Manager;

import java.util.List;

public interface ManagerService {
    /**
     * 查询全部管理员
     * @return
     */
    public List<Manager> listManagers();
    /**
     * 添加管理员
     * @param
     */
    public void addManager(String userName, String password);
    /**
     * 更新管理员
     * @param manager
     * @return
     */
    public void updateManager(Manager manager);

    /**
     * 基于ID获取指定管理员
     * @param id
     * @return
     */
    public Manager getManager(int id);

    /**
     * 基于ID删除管理员
     * @param id
     */
    public void removeManager(int id);
}
