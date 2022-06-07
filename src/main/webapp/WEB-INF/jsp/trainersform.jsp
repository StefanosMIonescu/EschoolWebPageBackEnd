<%-- 
    Document   : trainerform
    Created on : Jun 24, 2021, 12:34:02 PM
    Author     : Mircea
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form"
          prefix="F"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        <title>${title}</title>

    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark ">
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

                                <a class="dropdown-item" href="/trainerform">Trainer Form
                                </a>
                                <a class="dropdown-item" href="/alltrainers">All Trainers List
                                </a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <h1>${model.head}</h1>
        <div class="container-fluid">
            <div class="">
                <div id="tableForm">
                    <F:form method="POST" action="${model.action}"
                            modelAttribute="trainer">

                        <table>
                            <tr>
                                <td>Trainer First Name</td>
                                <td><F:input value="${model.firstName}" path="firstname" pattern="[a-zA-Z ]{2,45}" required="true"/></td>



                            </tr>
                            <tr>
                                <td>Trainer Last Name</td>
                                <td><F:input value="${model.lastName}" path="lastname" pattern="[a-zA-Z ]{2,60}" required="true"/></td>


                            </tr>
                            <tr>
                                <td>Trainer Subject Name</td>
                                <td><F:input value="${model.subject}" path="subject" pattern="[a-zA-Z 0-9]{2,45}" required="true"/></td>


                            </tr>

                        </table>

                        <input type="submit" value="submit" >
                        <div>${message}
                        </div>
                    </F:form>
                </div>
            </div>
        </div> 
        <footer class="page-footer font-small bg-dark text-white container-fluid" >

            <div class="footer-copyright text-center py-3">
                <p class="text-center">Created for PeopleCert&reg; Java BootCamp CB13 <br>
                    By <span><a href="#">Mircea Steanos Ionescu</a></span> </p>
                <div>


                    </footer>   
                    </body>
                    </html>


