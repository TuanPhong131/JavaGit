<%--
  Created by IntelliJ IDEA.
  User: nhuhu
  Date: 12/26/2021
  Time: 10:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<title>Coffee Manager</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link href="../css/agency.css" rel="stylesheet" type="text/css"/>
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
            <li class="active"><a href="/demo_war_exploded/milktea">Milk Tea</a></li>
            <li><a href="/demo_war_exploded/agency?name=agency1">Agency</a></li>
            <li><a href="/demo_war_exploded/total">Total Report Daily</a></li>
        </ul>
        <form class="navbar-form navbar-right" action="searchMilktea" method="get">
            <div class="input-group">
                <input name="name" type="text" class="form-control" placeholder="Search here ...">
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
        <h1 style="font-size:50px">The Happy Garden</h1>
        <p>And I'm a Drinker and Thinker</p>
    </div>
</div>
</div>
<br>
<br>
<div class="container rounded bg-white mt-5">

    <div class="row">
        <div class="col-md-8">
            <form action="/demo_war_exploded/milktea" method="post">
                <div class="p-3 py-5">
                    <div class="row mt-3">
                        <div class="col-md-6"><label>IMAGE</label><input class="form-control" type="text" name="image"
                                                                         id="image"
                                                                         required/></div>
                        <div class="col-md-6"><label>ID</label><input class="form-control" type="text" name="sid"
                                                                      id="sid"
                                                                      readonly/></div>

                    </div>
                    <div class="row mt-2">
                        <div class="col-md-6"><label>NAME</label> <input type="text"
                                                                         id="name"
                                                                         class="form-control" name="name" required>
                        </div>
                        <div class="col-md-6"><label>CODE</label> <input type="text"
                                                                         id="code"
                                                                         class="form-control" name="code" required>
                        </div>
                    </div>
                    <div class="row mt-3">

                        <div class="col-md-6"><label>SIZE</label> <input type="text"
                                                                         id="size"
                                                                         class="form-control" name="size" required>
                        </div>
                        <div class="col-md-6"><label>PRICE</label> <input type="text"
                                                                          id="price"
                                                                          class="form-control" name="price" required>
                        </div>
                    </div>
                    <div class="row mt-3">

                        <div class="col-md-6"><label>typeofTea</label> <input type="text"

                                                                             id="typeofTea"
                                                                             class="form-control" name="typeofTea"
                                                                             required>
                        </div>
                        <div class="col-md-6"><label>mlTea</label> <input type="text"
                                                                          id="mlTea"
                                                                          class="form-control" name="mlTea"
                                                                          required></div>
                    </div>
                    <div class="row mt-3">

                        <div class="col-md-6"><label>condensedMilk</label> <input type="text"
                                                                                  id="condensedMilk"
                                                                                  class="form-control"
                                                                                  name="condensedMilk"
                                                                                  required></div>
                        <div class="col-md-6"><label>typeofSyrup</label> <input type="text"
                                                                              id="typeofSyrup"
                                                                              class="form-control" name="typeofSyrup"
                                                                              required></div>
                        <div class="col-md-6"><label>mlSyrup</label> <input type="text"
                                                                                id="mlSyrup"
                                                                                class="form-control" name="mlSyrup"
                                                                                required></div>

                    </div>
                    <br>
                    <div class="mt-5 text-right">
                        <button onclick="Alert()" class="btn btn-success" type="submit">Save</button>
                    </div>
                    <br>
                    <br>
                    <br>
                    <br>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
