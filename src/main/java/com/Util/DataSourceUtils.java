package com.Util;

import javax.annotation.Resource;
import javax.servlet.ServletContextListener;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

/**
 * 创建容器启动监听器DataSourceUtils，注入DataSource对象，暴露连接对象获取方法
 */
public class DataSourceUtils implements ServletContextListener {
    @Resource(name = "jdbc/MySQL")
    private static DataSource dataSource;
    public static Connection getConnection() throws SQLException {
        return dataSource.getConnection();
    }
}
