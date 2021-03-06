<!DOCTYPE html>
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
</head>
<body>
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="/demo_war_exploded/homeA1.jsp">HOME</a>
        </div>
        <ul class="nav navbar-nav">
            <li class="active"><a href="/demo_war_exploded/coffee">Coffee</a></li>
            <li><a href="/demo_war_exploded/milktea">Milk Tea</a></li>
            <li><a href="/demo_war_exploded/agency?name=agency1">Agency</a></li>
            <li><a href="/demo_war_exploded/total">Total Report Daily</a></li>
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
        <h2>List Of <b>Coffee</b></h2>
    </div>
    <div class="container">
        <a href="addCoffee.jsp"><i
                class="material-icons">&#xE147;</i> <span>Add New Item</span></a>
        <a href="/demo_war_exploded/salesCoffee"><i
                class="material-icons">&#xE147;</i> <span>Report Sales</span></a>
        <form class="navbar-form navbar-right" action="searchCoffee" method="get">
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
            <th>COFFEE(GR)</th>
            <th>FRESH MILK(ML)</th>
            <th>CONDENSED MILK(ML)</th>
            <th>SUGAR(ML)</th>
            <th>ACTIONS</th>
        </tr>
        </thead>
        <form action="/coffee" method="get">
            <tbody>
            <c:forEach var="x" items="${listCoffee}">
                <tr>
                    <td><img class="card-image-top img-thumbnail" src="${x.image}" alt="Card image cap" height="100"
                             width="100"></td>
                    <td>${x.code}</td>
                    <td>${x.name}</td>
                    <td>${x.size}</td>
                    <td>${x.price}</td>
                    <td>${x.grCoffee}</td>
                    <td>${x.freshMilk}</td>
                    <td>${x.condensedMilk}</td>
                    <td>${x.sugar}</td>
                    <td>
                        <button type="button" onclick="DeleteFunction(${x.id})" class="btn btn-danger">
                            <i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i>
                        </button>
                        <button type="button" onclick="SelectFunction(${x.id})" class="btn btn-success">
                            <i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i>
                        </button>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </form>
        <form action="/searchCoffee" method="get">
            <tbody>
            <c:forEach var="x" items="${searchCoffee}">
                <tr>
                    <td><img class="card-image-top img-thumbnail" src="${x.image}" alt="Card image cap" height="100"
                             width="100"></td>
                    <td>${x.code}</td>
                    <td>${x.name}</td>
                    <td>${x.size}</td>
                    <td>${x.price}</td>
                    <td>${x.grCoffee}</td>
                    <td>${x.freshMilk}</td>
                    <td>${x.condensedMilk}</td>
                    <td>${x.sugar}</td>
                    <td>
                        <button type="button" onclick="DeleteFunction(${x.id})" class="btn btn-danger">
                            <i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i>
                        </button>
                        <button type="button" onclick="SelectFunction(${x.id})" class="btn btn-success">
                            <i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i>
                        </button>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </form>
    </table>
</div>
</body>
<script>
    function DeleteFunction(id) {
        $.ajax({
            url: '/demo_war_exploded/coffee?sid=' + id,
            dataType: 'text',
            type: 'DELETE',
            async: true,
            statusCode: {
                404: function (response) {
                    alert(404);
                },
                200: function (response) {
                    window.location.reload();
                    alert("Delete success");
                }
            },
            error: function (jqXHR, status, errorThrown) {
                alert('error');
            }
        });
    }
</script>
<script>
    function SelectFunction(id) {
        $.ajax({
            url: '/demo_war_exploded/updateCoffee?sid=' + id,
            dataType: 'text',
            type: 'GET',
            async: true,
            statusCode: {
                404: function (response) {
                    alert(404);
                },
                200: function (response) {
                    window.location.href = '/demo_war_exploded/updateCoffee?sid=' + id
                }
            },
            error: function (jqXHR, status, errorThrown) {
                alert('error');
            }
        });
    }
</script>
</html>