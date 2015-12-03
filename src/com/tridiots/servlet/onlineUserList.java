package com.tridiots.servlet;

import java.util.Hashtable;

public class onlineUserList {

	/**
     * 定义他的构造方法，让外部没有办法是用new去构造该对象
     */
    private onlineUserList() {
    }
    /**
     * 定义内部类对单例进行实例化。
     * 首先内部类是static的，保证了该类在内存中只有一份，同时他的成员变量是final static的，则又再次保证他的单一性。
     * 同时由于JLS会保证类的线程安全。
     * @author Administrator
     *
     */
    private static class SingleTonHolder {
        public final static onlineUserList instance = new onlineUserList();
    }
    /**
     * 提供获取实例的方法
     * @return
     */
    public static onlineUserList getInstance() {
        // 直接获取内部类的变量
        return SingleTonHolder.instance;
    }
    
    
    
    private Hashtable list = new Hashtable();
    public void addUser(int uid,String sid){
    	list.put(uid,sid);
    }
    public void deleteUser(int uid){
    	list.remove(uid);
    }
    public boolean isOnline(int uid){
    	return list.containsKey(uid);
    }
}
