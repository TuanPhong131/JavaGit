package com.example.demo.test;

import com.example.demo.dao.ModalDAO;
import com.example.demo.model.ModalCoffeeModel;

public class test {
    public static void main(String[] args) throws Exception {
        ModalDAO dao = new ModalDAO();
        ModalCoffeeModel s = dao.getModalById("1");
        System.out.println(s);
    }
}
