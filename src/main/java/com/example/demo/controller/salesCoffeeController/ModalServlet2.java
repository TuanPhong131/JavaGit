package com.example.demo.controller.salesCoffeeController;

import com.example.demo.dao.agency2.ModalDAO;
import com.example.demo.model.ModalCoffeeModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/modalCoffee2")
public class ModalServlet2 extends HttpServlet {
    private ModalDAO modalDAO;

    public void init() {
        modalDAO = new ModalDAO();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String id = req.getParameter("sid");
            ModalCoffeeModel modalModel = modalDAO.getModalById(id);
            req.setAttribute("modal", modalModel);
            req.getRequestDispatcher("modalCoffee2.jsp").forward(req, resp);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String id = req.getParameter("id");
            String quantity = req.getParameter("quantity");
            modalDAO.updateModal(id, quantity);
            resp.sendRedirect("salesCoffee2");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
