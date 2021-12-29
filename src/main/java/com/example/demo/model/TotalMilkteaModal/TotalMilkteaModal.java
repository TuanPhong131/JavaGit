package com.example.demo.model;

public class TotalMilkteaModal {
    private String typeofTea;
    private int totalTea;
    private String typeofSyrup;
    private double totalSyrup;
    private int sumMilk;
    private double sumTotal;

    public TotalMilkteaModal(String typeofTea, int totalTea, String typeofSyrup, int totalSyrup, int sumMilk, double sumTotal) {
        this.typeofTea = typeofTea;
        this.totalTea = totalTea;
        this.typeofSyrup = typeofSyrup;
        this.totalSyrup = totalSyrup;
        this.sumMilk = sumMilk;
        this.sumTotal = sumTotal;
    }

    public TotalMilkteaModal() {
    }

    public TotalMilkteaModal(String typeofTea, int totalTea) {
        this.typeofTea = typeofTea;
        this.totalTea = totalTea;
    }

    public TotalMilkteaModal(int sumMilk, double sumTotal) {
        this.sumMilk = sumMilk;
        this.sumTotal = sumTotal;
    }

    public TotalMilkteaModal(String typeofSyrup, double totalSyrup) {
        this.typeofSyrup = typeofSyrup;
        this.totalSyrup = totalSyrup;
    }

    public String getTypeofTea() {
        return typeofTea;
    }

    public void setTypeofTea(String typeofTea) {
        this.typeofTea = typeofTea;
    }

    public int getTotalTea() {
        return totalTea;
    }

    public void setTotalTea(int totalTea) {
        this.totalTea = totalTea;
    }

    public String getTypeofSyrup() {
        return typeofSyrup;
    }

    public void setTypeofSyrup(String typeofSyrup) {
        this.typeofSyrup = typeofSyrup;
    }

    public double getTotalSyrup() {
        return totalSyrup;
    }

    public void setTotalSyrup(double totalSyrup) {
        this.totalSyrup = totalSyrup;
    }

    public int getSumMilk() {
        return sumMilk;
    }

    public void setSumMilk(int sumMilk) {
        this.sumMilk = sumMilk;
    }

    public double getSumTotal() {
        return sumTotal;
    }

    public void setSumTotal(double sumTotal) {
        this.sumTotal = sumTotal;
    }
}
