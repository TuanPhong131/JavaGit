package com.example.demo.dao;

import com.example.demo.connectDB.ConnectDB;
import com.example.demo.model.IngredientModel;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class IngredientDAO {
    

    public Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("org.mariadb.jdbc.Driver");
            connection = DriverManager.getConnection(ConnectDB.url, ConnectDB.user, ConnectDB.pw);
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return connection;
    }

    public List<IngredientModel> getAllingredient() throws Exception {
        List<IngredientModel> list = new ArrayList<>();
        String sql = "SELECT * FROM ingredient";
        try (
                Connection connection = getConnection();
                PreparedStatement statement = connection.prepareStatement(sql);
                ResultSet resultSet = statement.executeQuery()
            ) 
        {
            while (resultSet.next()) {
                list.add(new IngredientModel(
                		resultSet.getInt("id"),
                		 resultSet.getInt("COFFEE(GR)"),
                         resultSet.getInt("FRESH MILK(ML)"),
                         resultSet.getInt("CONDENSED MILK(ML)"),
                         resultSet.getInt("SUGAR(ML)"),
                         resultSet.getInt("AMOUNT OF TEA (ML)"),
                         resultSet.getInt("AMOUNT OF SYRUP (ML)")));
            }
        }
        return list;
    }
    public void update(int addgrCoffee, int addfreshMilk, int addcondensedMilk, int addsugar, int addmlTea, int addmlSyrup )  {
         
        
		String sql = "SELECT * FROM ingredient";
		try {
				Connection connection = getConnection();
				// Đọc database
				PreparedStatement statementa = connection.prepareStatement(sql);
				ResultSet resultSeta = statementa.executeQuery();
				while (resultSeta.next()) {
				int grCoffee =	resultSeta.getInt("COFFEE(GR)") + addgrCoffee;
				int freshMilk =	resultSeta.getInt("FRESH MILK(ML)") + addfreshMilk;
				int condensedMilk =	resultSeta.getInt("CONDENSED MILK(ML)") + addcondensedMilk;
				int sugar =	resultSeta.getInt("SUGAR(ML)") + addsugar;
				int mlTea =	resultSeta.getInt("AMOUNT OF TEA (ML)") + addmlTea;
				int mlSyrup =	resultSeta.getInt("AMOUNT OF SYRUP (ML)") + addmlSyrup;
				
				// update database
				String add_sql = "UPDATE `ingredient` SET `COFFEE(GR)`='" +grCoffee+"', `FRESH MILK(ML)`='"+freshMilk+"', `CONDENSED MILK(ML)`='"+condensedMilk+"', `SUGAR(ML)`='"+sugar+"', `AMOUNT OF TEA (ML)`='"
                        +mlTea+"', `AMOUNT OF SYRUP (ML)`='"+mlSyrup+"' WHERE  `id`=0;";
				PreparedStatement statement = connection.prepareStatement(add_sql);
				ResultSet resultSet = statement.executeQuery();
				
				}
		} 
			
		 catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	
    
    }
}
