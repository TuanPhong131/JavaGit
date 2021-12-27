package com.example.demo.controller;

import com.example.demo.dao.IngredientDAO;
import com.example.demo.model.IngredientModel;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Ingredient", value = "/ingredient")
public class IngredientServlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private IngredientDAO ingredientDAO;

    @Override
    public void init() {
        ingredientDAO = new IngredientDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
        	
            List<IngredientModel> list = ingredientDAO.getAllingredient();
            request.setAttribute("listIngredient", list);
            request.getRequestDispatcher("ingredient.jsp").forward(request, response);
            
            ;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	 
    	int addgrCoffee = Integer.parseInt(request.getParameter("addgrCoffee"))  ;
    	int addfreshMilk = Integer.parseInt(request.getParameter("addfreshMilk")) ;
    	int addcondensedMilk = Integer.parseInt(request.getParameter("addcondensedMilk")) ;
    	int addsugar = Integer.parseInt(request.getParameter("addsugar")) ;
    	int addmlTea = Integer.parseInt(request.getParameter("addmlTea")) ;
    	int addmlSyrup = Integer.parseInt(request.getParameter("addmlSyrup")) ;
    	
    	ingredientDAO.update(addgrCoffee, addfreshMilk, addcondensedMilk, addsugar, addmlTea, addmlSyrup);
    	try {
			List<IngredientModel> list = ingredientDAO.getAllingredient();

			request.setAttribute("listIngredient", list);
			request.getRequestDispatcher("ingredient.jsp").forward(request, response);
		} catch (Exception e) {
			 e.printStackTrace();
		}
    }
    
    
}
