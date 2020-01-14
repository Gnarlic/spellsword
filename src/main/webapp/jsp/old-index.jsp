<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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
    <body style="background-color:#005C91">

        <div class="container">
            <div class="text-center">
                <a href="http://www.gnarlitronic.com/#projects" style="color:white">Return to Homepage</a>    
                <hr/>
                <h1 style="color:#00CDFF">Spellsword</h1>
            </div>
            <div class="text-center">
                <div class="row text-center" style="margin-top:5%">
                    <div class="col-lg-4" style="color:greenyellow">
                        <div>
                            <h2>Player</h2>
                        </div>
                        <div>
                            <h4 id="player"> Level: ${player.level} | Health: ${player.health}</h4>
                        </div>
                    </div>
                    <div class="col-lg-4" style="color:#DB8282">
                        <div>
                            <h2 >Enemy</h2>
                        </div>
                        <div>
                            <h4 id="enemy">Type: ${enemy.enemyName} | Level: ${enemy.level} | Health: ${enemy.health}</h4>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <h2 id="weapon" style="color:#79DA86">Weapon: ${weaponName}</h2>
                        <h2 id="magic" style="color:#AA99E9">Magic Item: ${magicName}</h2>
                    </div>

                </div>
                <h1 id="errorMessage">${gameover}</h1>
            </div>
            <div class="row text-center" style="margin-bottom:30px">
                <div class="col-md-3"></div>
                <div class="col-md-2">
                    <a id="attack"><button>Attack</button></a>
                </div>
                <div class="col-md-2" id="test">
                    <form action="${pageContext.request.contextPath}/">
                        <button type="submit">Reset</button>
                    </form>
                </div>
                <div class="col-md-2">
                    <button id="changeWeapon">Change Weapons</button>
                </div>
                <div class="col-md-3"></div>
            </div>
            <div class="text-center text-white" id="weaponList">
            </div>
        </div>
    </div>

    <!-- Placed at the end of the document so the pages load faster -->
    <script src="${pageContext.request.contextPath}/js/jquery-3.1.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script>
        var requestContextPath = '${pageContext.request.contextPath}';
    </script>
    <script src="${pageContext.request.contextPath}/js/gameplay.js"</script>

    <script>
        $(document).ready(function () {
            // Add smooth scrolling to all links in navbar + footer link
            $(".navbar a, footer a[href='#myPage']").on('click', function (event) {
                // Make sure this.hash has a value before overriding default behavior
                if (this.hash !== "") {
                    // Prevent default anchor click behavior
                    event.preventDefault();

                    // Store hash
                    var hash = this.hash;

                    // Using jQuery's animate() method to add smooth page scroll
                    // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
                    $('html, body').animate({
                        scrollTop: $(hash).offset().top
                    }, 900, function () {

                        // Add hash (#) to URL when done scrolling (default click behavior)
                        window.location.hash = hash;
                    });
                } // End if
            });

            $(window).scroll(function () {
                $(".slideanim").each(function () {
                    var pos = $(this).offset().top;

                    var winTop = $(window).scrollTop();
                    if (pos < winTop + 600) {
                        $(this).addClass("slide");
                    }
                });
            });
        });
    </script>
</body>
</html>

