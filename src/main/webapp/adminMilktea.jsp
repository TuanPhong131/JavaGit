<!DOCTYPE html> <!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <title>Coffee Manager</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link href="css/agency.css" rel="stylesheet" type="text/css"/>
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
        .navbar {
            font-family: Montserrat, sans-serif;
            margin-bottom: 0;
            background-color: #2d2d30;
            border: 0;
            font-size: 11px !important;
            letter-spacing: 4px;
            opacity: 0.9;
        }
        .navbar li a, .navbar .navbar-brand {
            color: #d5d5d5 !important;
        }
        .navbar-nav li a:hover {
            color: #fff !important;
        }
        .navbar-nav li.active a {
            color: #fff !important;
            background-color: #29292c !important;
        }
        .navbar-default .navbar-toggle {
            border-color: transparent;
        }
        .dropdown-menu li a {
            color: #000 !important;
        }
        .dropdown-menu li a:hover {
            background-color: red !important;
        }
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
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="/demo_war_exploded/home.jsp">HOME</a>
        </div>
        <ul class="nav navbar-nav">
            <li><a href="/demo_war_exploded/adminCoffee">Menu Coffee Agency 1</a></li>
            <li><a href="/demo_war_exploded/adminCoffee2">Menu Coffee Agency 2</a></li>
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">MORE
                    <span class="caret"></span></a>
                <ul class="dropdown-menu">
                    <li class="active"><a href="/demo_war_exploded/adminMilktea">Menu Milk Tea Agency 1</a></li>
                    <li><a href="/demo_war_exploded/adminMilktea2">Menu Milk Tea Agency 2</a></li>
                    <li><a href="/demo_war_exploded/adminEmployee?name=agency1">Employee</a></li>
                    <li><a href="/demo_war_exploded/reportAgency1">Report Of Agency 1</a></li>
                    <li><a href="/demo_war_exploded/reportAgency2">Report Of Agency 2</a></li>
                </ul>
            </li>
        </ul>
        <div class="navbar-form navbar-right">
            <a href="./logout">Log Out</a>
        </div>
    </div>
</nav>
<div class="hero-image">
    <div class="hero-text">
        <h1 style="font-size:50px">The Happy Garden</h1>
        <p>And I'm a Drinker and Thinker</p>
    </div>
</div>
<br>
<div class="container-fluid" style="margin-left: 50px">
    <div class="col-sm-6">
        <h2><b>AGENCY 1</b> List Of Milk Tea </h2>
    </div>
    <br>
</div>
<br>
<div class="container">
    <table class="table table-striped">
        <thead>
        <tr>
            <th>IMAGE</th>
            <th>CODE</th>
            <th>NAME</th>
            <th>SIZE</th>
            <th>PRICE</th>
            <th>TEA TYPE</th>
            <th>AMOUNT OF TEA (ML)</th>
            <th>CONDENSED MILK (ML)</th>
            <th>TYPE SYRUP</th>
            <th>AMOUNT OF SYRUP (ML)</th>
        </tr>
        </thead>
        <form action="/adminMilktea" method="get">
            <tbody>
            <c:forEach var="x" items="${listMilktea}">
                <tr>
                    <td><img class="card-image-top img-thumbnail" src="${x.image}" alt="Card image cap" height="100"
                             width="100"></td>
                    <td>${x.code}</td>
                    <td>${x.name}</td>
                    <td>${x.size}</td>
                    <td>${x.price}</td>
                    <td>${x.typeofTea}</td>
                    <td>${x.mlTea}</td>
                    <td>${x.condensedMilk}</td>
                    <td>${x.typeofSyrup}</td>
                    <td>${x.mlSyrup}</td>
                </tr>
            </c:forEach>
            </tbody>
        </form>

    </table>
</div>
<br>
</body>
</html>
