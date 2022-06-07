<%-- 
    Document   : alltrainers
    Created on : Jun 24, 2021, 1:45:03 PM
    Author     : Mircea
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Trainer List</title>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
                integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
                crossorigin="anonymous">
        </script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
                integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
                crossorigin="anonymous">
        </script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
                integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
                crossorigin="anonymous">
        </script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
              integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.25/datatables.min.css"/>
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.25/datatables.min.js"></script>
        <title>All Trainer</title>
    </head>

    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container bg-dark">

                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item ">
                            <a class="nav-link " href="/index" target="_top">Home <span
                                    class="sr-only">(current)</span>
                            </a>
                        </li>

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                All List Menu
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">

                                <a class="dropdown-item" href="/trainerform/">Trainer Form
                                </a>
                                <a class="dropdown-item" href="/trainerform/alltrainers">All Trainers List
                                </a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <h1>List of Trainers</h1>
        <div>${model.message}</div>
        <table id="trainers_table" class="display" style="width: 100%">
            <thead>
                <tr>

                    <th>Id</th>
                    <th>Fist Name</th>
                    <th>Last Name</th>
                    <th>Subject</th>
                    <th>Actions</th>

                </tr>

            </thead>
            <tbody>
                <c:forEach items="${trainers}"  var="trainer">

                    <tr>
                        <td><c:out value="${trainer.id}"/></td> 
                        <td>${trainer.firstname}</td> 
                        <td>${trainer.lastname}</td> 
                        <td>${trainer.subject}</td> 
                        <td><a href="/trainerform/edit/${trainer.id}" class="btn btn-info">Edit</a>&nbsp;
                            <a href="/trainerform/delete/${trainer.id}" class="btn btn-danger">Delete</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <footer class="page-footer font-small bg-dark text-white container-fluid" >

            <div class="footer-copyright text-center py-3">
                <p class="text-center">Created for PeopleCert&reg; Java BootCamp CB13 <br>
                    By <span><a href="#">Mircea Steanos Ionescu</a></span> </p>
                <div>


        </footer>     
                    <script>
                    $(document).ready(function () {
                        $("#trainers_table").DataTable();

                    });
                    </script> 

                    </body>
                    </html>
