package com.example.demo.model;

public class IngredientModel {
	private int id;
	private int grCoffee;
	private int freshMilk;
	private int condensedMilk;
	private int sugar;
	private int mlTea;
	private int mlSyrup;
	
    public IngredientModel(int id, int grCoffee, int freshMilk, int condensedMilk, int sugar, int mlTea, int mlSyrup) {
		super();
		this.id = id;
		this.grCoffee = grCoffee;
		this.freshMilk = freshMilk;
		this.condensedMilk = condensedMilk;
		this.sugar = sugar;
		this.mlTea = mlTea;
		this.mlSyrup = mlSyrup;
	}

	public IngredientModel(int grCoffee, int freshMilk, int condensedMilk, int sugar, int mlTea, int mlSyrup) {
		
		this.grCoffee = grCoffee;
		this.freshMilk = freshMilk;
		this.condensedMilk = condensedMilk;
		this.sugar = sugar;
		this.mlTea = mlTea;
		this.mlSyrup = mlSyrup;
	}	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getGrCoffee() {
		return grCoffee;
	}

	public void setGrCoffee(int grCoffee) {
		this.grCoffee = grCoffee;
	}

	public int getFreshMilk() {
		return freshMilk;
	}

	public void setFreshMilk(int freshMilk) {
		this.freshMilk = freshMilk;
	}

	public int getCondensedMilk() {
		return condensedMilk;
	}

	public void setCondensedMilk(int condensedMilk) {
		this.condensedMilk = condensedMilk;
	}

	public int getMlTea() {
        return mlTea;
    }

    public void setMlTea(int mlTea) {
        this.mlTea = mlTea;
    }

    public int getSugar() {
        return sugar;
    }

    public void setSugar(int sugar) {
        this.sugar = sugar;
    }

    public int getMlSyrup() {
        return mlSyrup;
    }

    public void setMlSyrup(int mlSyrup) {
        this.mlSyrup = mlSyrup;
    }

    @Override
    public String toString() {
        return "IngredientModel{"+
        		"grCoffee=" + grCoffee +
                ", freshMilk=" + freshMilk +
                ", condensedMilk=" + condensedMilk +
                ", sugar=" + sugar +
                ",mlTea=" + mlTea +
                ", mlSyrup=" + mlSyrup +
                '}';
    }
}
