<%-- 
    Document   : index2
    Created on : Dec 7, 2019, 5:09:04 PM
    Author     : Elnic
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Spellsword</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">     
        <!-- Bootstrap core CSS -->

        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
        <link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
        
    </head>
    <body style="background-color:#3389B8">
        <h1>Hello World!</h1>
        <button id="test" onclick="loadPage()">alert</button>
        <div class="container">
            <div>
                <h2>Welcome to Spellsword!</h2>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <button id="attack">attack</button>
                    <br>
                    <button id="block">block</button>
                </div>
                <div class="col-md-6">
                    <table class="table table-hover table-bordered">
                        <tr>
                            <td>
                               Health: 
                            </td>
                            <td id="charHealth">
                                
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Enemy Health:
                            </td>
                            <td id="enemyHealth">
                                
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
        <script>
            var requestContextPath = '${pageContext.request.contextPath}';
            var info = '${info}';
        </script>
        <script src="${pageContext.request.contextPath}/js/gameplay.js"></script>
    </body>
</html>
