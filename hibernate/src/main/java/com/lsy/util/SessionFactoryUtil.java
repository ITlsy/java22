package com.lsy.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.boot.registry.internal.StandardServiceRegistryImpl;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

/**
 * Created by Administrator on 2017/3/13 0013.
 */
public class SessionFactoryUtil {
    private static SessionFactory sessionFactory=builderSessionFactory();

    private static SessionFactory builderSessionFactory(){
        Configuration configuration=new Configuration().configure();
        ServiceRegistry serviceRegistry=new StandardServiceRegistryBuilder()
                .applySettings(configuration.getProperties()).build();

        return configuration.buildSessionFactory(serviceRegistry);

    }

    public static SessionFactory getSessionFactory(){
        return sessionFactory;
    }
    public static Session getSession(){
        return getSessionFactory().getCurrentSession();
    }
}
