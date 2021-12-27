package com.example.demo.controller.employee;

import com.example.demo.dao.AgencyDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Add", value = "/add")
public class AddServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String agency = request.getParameter("agency");
        String code = request.getParameter("code");
        String name = request.getParameter("name");
        String position = request.getParameter("position");
        String pay1h = request.getParameter("pay1h");
        String payOT = request.getParameter("payOT");
        AgencyDAO agencyDAO =new AgencyDAO();
        agencyDAO.addEmployee(agency,code,name,position,pay1h,payOT);
        response.sendRedirect("agency?name="+agency);
    }
}
