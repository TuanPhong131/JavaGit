package com.example.demo.controller.salesMilkteaController;

import com.example.demo.dao.SalesDAO;
import com.example.demo.model.SalesCoffeeModel;
import com.example.demo.model.SalesMilkteaModel;
import com.example.demo.model.TotalCoffeeModal;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "SalesMilktea", value = "/salesMilktea")
public class ReportSalesMilktea extends HttpServlet {
    private SalesDAO salesDAO;

    public void init() {
        salesDAO = new SalesDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            List<SalesMilkteaModel> list = salesDAO.getSalesMilktea();
            request.setAttribute("listMilktea", list);
//            TotalCoffeeModal totalModal = salesDAO.getSum();
//            request.setAttribute("sum",totalModal);
            request.getRequestDispatcher("salesMilktea.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
