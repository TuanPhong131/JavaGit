<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>Coffee Manager</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="css/agency.css" rel="stylesheet" type="text/css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="/demo_war_exploded/menu.jsp">Menu</a>
        </div>
        <ul class="nav navbar-nav">
            <li><a href="/demo_war_exploded/adminCoffee">Menu Coffee Agency 1</a></li>
            <li><a href="/demo_war_exploded/adminCoffee2">Menu Coffee Agency 2</a></li>
            <li><a href="/demo_war_exploded/adminMilktea">Menu Milk Tea Agency 1</a></li>
            <li><a href="/demo_war_exploded/adminMilktea2">Menu Milk Tea Agency 2</a></li>
            <li class="active"><a href="/demo_war_exploded/adminEmployee?name=agency1">Employee</a></li>
            <li><a href="/demo_war_exploded/reportAgency1">Report Of Agency 1</a></li>
            <li><a href="/demo_war_exploded/reportAgency2">Report Of Agency 2</a></li>
        </ul>
        <div class="navbar-form navbar-right">
            <a href="./logout">Log Out</a>
        </div>
    </div>
</nav>
<div class="hero-image">
    <div class="hero-text">
        <h1 style="font-size: 50px">The Happy Garden</h1>
        <p>And I'm a Drinker and Thinker</p>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-sm-2">
            <h3>List Agencies</h3>
            <ul class="nav nav-pills nav-stacked">
                <li class=${agency=="agency1" ?"active":""}><a href="adminEmployee?name=agency1">Agency 1</a></li>
                <li class=${agency=="agency2" ?"active":""}><a href="adminEmployee?name=agency2">Agency 2</a></li>
            </ul>
            <hr class="hidden-sm hidden-md hidden-lg"/>
        </div>
        <div class="col-sm-8">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Manage <b>Employees</b></h2>
                        </div>
                    </div>
                </div>
                <table class="table table-striped table-hover">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>CODE</th>
                        <th>NAME</th>
                        <th>POSITION</th>
                        <th>PAY1H</th>
                        <th>PAYOT</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="x" items="${listAgency}">
                        <tr>
                            <td>${x.id}</td>
                            <td>${x.code}</td>
                            <td>${x.name}</td>
                            <td>${x.position}</td>
                            <td>${x.pay1h}</td>
                            <td>${x.payOT}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

</div>
</body>
</html>
