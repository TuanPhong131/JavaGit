package com.example.demo.dao;

import com.example.demo.connectDB.ConnectDB;
import com.example.demo.model.SalesCoffeeModel;
import com.example.demo.model.SalesMilkteaModel;
import com.example.demo.model.TotalCoffeeModal;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class SalesDAO {
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

    public List<SalesCoffeeModel> getAllSales() throws Exception {
        List<SalesCoffeeModel> list = new ArrayList<>();
        String sql = "SELECT * FROM salesCoffee";
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(sql);
             ResultSet resultSet = statement.executeQuery()) {
            while (resultSet.next()) {
                list.add(new SalesCoffeeModel(resultSet.getInt("id"),
                        resultSet.getString("code"),
                        resultSet.getString("image"),
                        resultSet.getString("name"),
                        resultSet.getString("size"),
                        resultSet.getInt("price"),
                        resultSet.getInt("grCoffee"),
                        resultSet.getInt("freshMilk"),
                        resultSet.getInt("condensedMilk"),
                        resultSet.getInt("sugar"),
                        resultSet.getInt("quantity"),
                        resultSet.getDouble("total"))
                );
            }
        }
        return list;
    }

    public TotalCoffeeModal getSum() throws Exception {
        String sql = "SELECT SUM(total) as totalSum, \n" +
                "SUM(grCoffee) AS totalGrCoffee,\n" +
                "SUM(freshMilk) AS totalFreshMilk,\n" +
                "SUM(condensedMilk) AS totalCondensedMilk,\n" +
                "SUM(sugar) AS totalSugar,\n" +
                "SUM(quantity) AS totalQuantity\n" +
                "from salesCoffee";
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            try (ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    return new TotalCoffeeModal(resultSet.getDouble("totalSum"),
                            resultSet.getInt("totalGrCoffee"),
                            resultSet.getInt("totalFreshMilk"),
                            resultSet.getInt("totalCondensedMilk"),
                            resultSet.getInt("totalSugar"),
                            resultSet.getInt("totalQuantity"));
                }
            }
        }
        return null;
    }
    public List<SalesMilkteaModel> getSalesMilktea() throws Exception {
        List<SalesMilkteaModel> list = new ArrayList<>();
        String sql = "SELECT * FROM salesMilktea";
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(sql);
             ResultSet resultSet = statement.executeQuery()) {
            while (resultSet.next()) {
                list.add(new SalesMilkteaModel(resultSet.getInt("id"),
                        resultSet.getString("code"),
                        resultSet.getString("image"),
                        resultSet.getString("name"),
                        resultSet.getString("size"),
                        resultSet.getInt("price"),
                        resultSet.getString("typeofTea"),
                        resultSet.getInt("mlTea"),
                        resultSet.getInt("condensedMilk"),
                        resultSet.getString("typeofSyrup"),
                        resultSet.getInt("mlSyrup"),
                        resultSet.getInt("quantity"),
                        resultSet.getDouble("total"))
                );
            }
        }
        return list;
    }

}
