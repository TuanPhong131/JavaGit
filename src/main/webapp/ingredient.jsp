<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <title>Ingredient Management</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        body, html {
            height: 100%;
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
        }

        .hero-image {
            background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url("https://i.pinimg.com/originals/d4/a7/12/d4a712855bb7eb5f87aff423d40640b6.jpg");
            height: 50%;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            position: relative;
        }

        .hero-text {
            text-align: center;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            color: white;
        }

        .hero-text button {
            border: none;
            outline: 0;
            display: inline-block;
            padding: 10px 25px;
            color: black;
            background-color: #ddd;
            text-align: center;
            cursor: pointer;
        }

        .hero-text button:hover {
            background-color: #555;
            color: white;
        }
    </style>
    <style>
        table {
            border-collapse: collapse;
            border-spacing: 0;
            width: 100%;
            border: 1px solid #ddd;
        }

        th, td {
            text-align: center;
            padding: 16px;
        }

        tr:nth-child(even) {
            background-color: #dddd;
        }
    </style>
    <meta name="viewport" content="width=device-width, initial-scale=1">

<body>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="/demo_war_exploded/menu.jsp">Menu</a>
        </div>
        <ul class="nav navbar-nav">
            <li><a href="/demo_war_exploded/coffee">Coffee</a></li>
            <li><a href="/demo_war_exploded/milktea">Milk Tea</a></li>
            <li><a href="/demo_war_exploded/agency?name=agency1">Agency</a></li>
            <li class="active"><a href="/demo_war_exploded/ingredient">Ingredient</a></li>
        </ul>
        <form class="navbar-form navbar-right" action="/action_page.php">
            <div class="input-group">
                <input type="text" class="form-control" placeholder="Search">
                <div class="input-group-btn">
                    <button class="btn btn-default" type="submit">
                        <i class="glyphicon glyphicon-search"></i>
                    </button>
                </div>
            </div>
        </form>
    </div>
</nav>
<div class="hero-image">
    <div class="hero-text">
        <h1 style="font-size:50px">Total Ingredients</h1>
        <p>Total ingredients in stock</p>
    </div>
</div>
<div class="container">
    <table class="table table-striped">

        <thead>
        <tr>
            <th>COFFEE(GR)</th>
            <th>FRESH MILK(ML)</th>
            <th>CONDENSED MILK(ML)</th>
            <th>SUGAR(ML)</th>
            <th>AMOUNT OF TEA (ML)</th>
            <th>AMOUNT OF SYRUP (ML)</th>
            
        </tr>
        </thead>
        <tbody>
        <c:forEach var="x" items="${listIngredient}">
            <tr>
                <td>${x.grCoffee}</td> 	
                <td>${x.freshMilk}</td> 
                <td>${x.condensedMilk}</td> 
                <td>${x.sugar}</td>		 
                <td>${x.mlTea}</td> 	
                <td>${x.mlSyrup}</td> 	
            </tr>
            <tr>
						<form action="ingredient" method="POST">
						
						<td>ADD <input type="number" value=0 name="addgrCoffee" /> <br /> <input
							type="submit" value="ADD" />
							
						</td>
						<td>ADD <input type="number" value=0 name="addfreshMilk" /> <br /> <input
							type="submit" value="ADD" />
							
						</td>
						<td>ADD <input type="number" value=0 name="addcondensedMilk" /> <br />
							<input type="submit" value="ADD" />
							
						</td>
						<td>ADD <input type="number" value=0 name="addsugar" /> <br /> <input
							type="submit" value="ADD" />
							
						</td>
						<td>ADD <input type="number" value=0 name="addmlTea" /> <br /> <input
							type="submit" value="ADD" />
							
						</td>
						<td>ADD <input type="number" value=0 name="addmlSyrup" /> <br /> <input
							type="submit" value="ADD" />
							
						</td>
						</form>
					</tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>