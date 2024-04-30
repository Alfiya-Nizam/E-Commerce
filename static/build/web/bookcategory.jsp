<%@page import="DB.DB"%>
<%@page import="java.sql.ResultSet"%>
<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="zxx">
    <head>
        <title>Book Lover</title>
        <!-- for-mobile-apps -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Dazzling Birds Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
            function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- //for-mobile-apps -->
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link rel="stylesheet" href="css/lightbox.css">

        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <link rel="stylesheet" href="css/ken-burns.css" type="text/css" media="all" />
        <!-- font-awesome icons -->
        <link href="css/font-awesome.css" rel="stylesheet"> 
        <!-- //font-awesome icons -->
        <link href="//fonts.googleapis.com/css?family=Arsenal:400,400i,700,700i" rel="stylesheet">
        <link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>

    </head>

    <body>
        <!-- header -->
        <div class="header" id="home">
            <div class="container">
                <div class="w3l_header_left">
                    <ul>
                        <li>
                        </li>
                    </ul>
                </div>


                <div class="w3l_header_right">
                    <ul>

                    </ul>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
        <div class="header-bottom">
            <div class="container">
                <nav class="navbar navbar-default">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <div class="logo">
                            <h1><a class="navbar-brand" href="index.html"><span>Book </span>Lover </a></h1>
                        </div>
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
                        <nav>
                            <ul class="nav navbar-nav">
                                <li><a href="bookcategory.jsp">CATEGORY</a>

                                <li><a href="subcategory.jsp">SUB-CATEGORY</a></li>

                                <li>  <a href="language.jsp">LANGUAGE</a></li>



                                <li>  <a href="userview.jsp">USERS</a></li>

                                <li> <a href="shopview.jsp">SHOPS</a></li>

                                <li> <a href="bookview_1.jsp">BOOK DETAILS</a></li>
                                <li> <a href="ebook.jsp">e-BOOK </a></li>
                                <li>     <a href="index.jsp">LOGOUT</a></li></ul>
                        </nav>
                    </div>
                    <!-- /.navbar-collapse -->
                </nav>
                <div class="w3ls_search">
                    <div class="cd-main-header">
                        <ul class="cd-header-buttons">

                        </ul> <!-- cd-header-buttons -->
                    </div>
                    <div id="cd-search" class="cd-search">

                    </div>
                </div>
                <!-- search-jQuery -->
                <script src="js/main.js"></script>
                <!-- //search-jQuery -->
            </div>
        </div>
        <!-- //header -->
        <!-- banner -->
        <div class="banner">
            <hr style="height: 20px; background-color: #660000"/>
        </div>



        <div class="services" id="services">




        </div>

        <!-- //services -->

        <!-- welcome -->
        <div class="welcome" id="video">
            <div class="container">

                <div class="w3_tittle"><h3 class="agile-tittle">Category</h3> <div class="line-style"><span></span></div></div>
                <div class="w3-agile-top-info">	
                    <div class="w3-welcome-grids">
                        <div class="col-md-7 w3-welcome-left">

                            <p> <form action="categoryaction.jsp"> <table>

                                   
                                    <tr><td>CATEGORY NAME :</td>
                                        <td><input type="text" name="catname"></td></tr>
                                    <tr><td>&nbsp;</td></tr>
                                    <tr><td></td><td>
                                            <input class="hvr-underline-from-center" type="submit" style="width:180px" value="ADD"/>

                                        </td></tr>

                                </table>
                            </form></p>
<br/>
<br/><br/><br/>
                        </div>
                        	<div class="col-md-5 w3ls-welcome-img1">
<table border="1" >
            <tr>
                <th>BOOK CATEGORY NAME</th>
            </tr>
            <%
            ResultSet rs=DB.executeQuery("select * from bookcategory");
            while(rs.next())
                               {
                %>
                <tr>
                    <td><%=rs.getString("catname")%> </td>
                    <td>
                        <a href="delcategory.jsp?id=<%=rs.getString("catid")%>">DELETE</a>
                    </td></tr>
                <%
            }
            %>
        </table>
        <div class="clearfix"> </div></div>
                    </div>

                </div>
            </div>
        </div>
        <!-- //welcome -->

        <!-- Modal1 -->

        <!-- //Modal1 -->

        <!-- gallery -->

        <!-- //gallery -->
        <!--/reviews-->

        <!--//reviews-->




        <!-- footer -->

        <div class="agileinfo_copy_right">
            <div class="container">
                <div class="agileinfo_copy_right_left">
                    <p>© 2017 Dazzling Birds. All rights reserved | Design by <a href="http://w3layouts.com/">W3layouts</a></p>
                </div>
                <div class="agileinfo_copy_right_right w3l_header_right">



                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
        <!-- //footer -->
        <a href="#home" class="scroll" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>


        <!-- js -->
        <script type="text/javascript" src="js/jquery-2.2.3.min.js"></script>

        <script type="text/javascript" src="js/main.js"></script>
        <script src="js/lightbox-plus-jquery.min.js"> </script>

        <script src="js/particles.js"></script>
        <script src="js/app.js"></script>
        <!-- required-js-files-->
        <link href="css/owl.carousel.css" rel="stylesheet">
        <script src="js/owl.carousel.js"></script>
        <script>
            $(document).ready(function() {
                $("#owl-demo").owlCarousel({
                    items : 1,
                    lazyLoad : true,
                    autoPlay : true,
                    navigation : false,
                    navigationText :  false,
                    pagination : true,
                });
            });
        </script>
        <!--//required-js-files-->

        <script type="text/javascript">
            $(window).load(function() {
                $("#flexiselDemo1").flexisel({
                    visibleItems: 4,
                    animationSpeed: 1000,
                    autoPlay: true,
                    autoPlaySpeed: 3000,    		
                    pauseOnHover: true,
                    enableResponsiveBreakpoints: true,
                    responsiveBreakpoints: { 
                        portrait: { 
                            changePoint:480,
                            visibleItems: 1
                        }, 
                        landscape: { 
                            changePoint:640,
                            visibleItems:2
                        },
                        tablet: { 
                            changePoint:768,
                            visibleItems: 3
                        }
                    }
                });
						
            });
        </script>
        <script type="text/javascript" src="js/jquery.flexisel.js"></script>
        <!-- //js -->
        <!-- start-smoth-scrolling -->
        <script type="text/javascript" src="js/move-top.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>
        <script type="text/javascript">
            jQuery(document).ready(function($) {
                $(".scroll").click(function(event){		
                    event.preventDefault();
                    $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
                });
            });
        </script>
        <!-- //end-smoth-scrolling -->
        <!-- for bootstrap working -->
        <script src="js/bootstrap.js"></script>
        <!-- //for bootstrap working -->
        <!-- here stars scrolling icon -->
        <script type="text/javascript">
            $(document).ready(function() {
                /*
                                var defaults = {
                                containerID: 'toTop', // fading element id
                                containerHoverID: 'toTopHover', // fading element hover id
                                scrollSpeed: 1200,
                                easingType: 'linear' 
                                };
                 */
								
                $().UItoTop({ easingType: 'easeOutQuart' });
								
            });
        </script>
        <!-- //here ends scrolling icon -->
    </body>
</html>



