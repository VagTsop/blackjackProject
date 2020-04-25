<%-- 
    Document   : SpringForm
    Created on : Feb 28, 2020, 7:31:57 PM
    Author     : vatso
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Create an account</title>
        <style>
            html {
                background-color: #56baed;
            }

            body {
                font-family: "Poppins", sans-serif;
                height: 100vh;
            }

            a {
                color: #92badd;
                display:inline-block;
                text-decoration: none;
                font-weight: 400;
            }

            h2 {
                text-align: center;
                font-size: 16px;
                font-weight: 600;
                text-transform: uppercase;
                display:inline-block;
                margin: 40px 8px 10px 8px; 
                color: #cccccc;
            }



            /* STRUCTURE */

            .wrapper {
                display: flex;
                align-items: center;
                flex-direction: column; 
                justify-content: center;
                width: 100%;
                min-height: 100%;
                padding: 20px;
                position: relative;
            }

            #formContent {
                -webkit-border-radius: 10px 10px 10px 10px;
                border-radius: 10px 10px 10px 10px;
                background: #fff;
                padding: 30px;
                width: 90%;
                max-width: 600px;
                position: relative;
                padding: 0px;
                -webkit-box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
                box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
                text-align: center;
            }

            #formFooter {
                background-color: #f6f6f6;
                border-top: 1px solid #dce8f1;
                padding: 25px;
                text-align: center;
                -webkit-border-radius: 0 0 10px 10px;
                border-radius: 0 0 10px 10px;
            }



            /* TABS */

            h2.inactive {
                color: #cccccc;
            }

            h2.active {
                color: #0d0d0d;
                border-bottom: 2px solid #5fbae9;
            }



            /* FORM TYPOGRAPHY*/
            #submit {
                position:relative;
                top:20px;  
            }

            #loginButton {
                position:relative;
                left: 10px;         

            }
            input[type=button], input[type=submit], input[type=reset]  {
                background-color: #56baed;
                border: none;
                color: white;
                padding: 15px 80px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                text-transform: uppercase;
                font-size: 13px;
                -webkit-box-shadow: 0 10px 30px 0 rgba(95,186,233,0.4);
                box-shadow: 0 10px 30px 0 rgba(95,186,233,0.4);
                -webkit-border-radius: 5px 5px 5px 5px;
                border-radius: 5px 5px 5px 5px;
                margin: 5px 20px 40px 20px;
                -webkit-transition: all 0.3s ease-in-out;
                -moz-transition: all 0.3s ease-in-out;
                -ms-transition: all 0.3s ease-in-out;
                -o-transition: all 0.3s ease-in-out;
                transition: all 0.3s ease-in-out;
                position:relative;
                left:36px;
            }

            input[type=button]:hover, input[type=submit]:hover, input[type=reset]:hover  {
                background-color: #39ace7;

            }

            input[type=button]:active, input[type=submit]:active, input[type=reset]:active  {
                -moz-transform: scale(0.95);
                -webkit-transform: scale(0.95);
                -o-transform: scale(0.95);
                -ms-transform: scale(0.95);
                transform: scale(0.95);
                position:relative;
                left:100px;
            }

            input[type=text] {
                background-color: #f6f6f6;
                border: none;
                color: #0d0d0d;
                padding: 15px 32px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                margin: 5px;
                width: 85%;
                border: 2px solid #f6f6f6;
                -webkit-transition: all 0.5s ease-in-out;
                -moz-transition: all 0.5s ease-in-out;
                -ms-transition: all 0.5s ease-in-out;
                -o-transition: all 0.5s ease-in-out;
                transition: all 0.5s ease-in-out;
                -webkit-border-radius: 5px 5px 5px 5px;
                border-radius: 5px 5px 5px 5px;
                position:relative;
                left:40px;
            }

            input[type=text]:focus {
                background-color: #fff;
                border-bottom: 2px solid #5fbae9;
            }

            input[type=text]:placeholder {
                color: #cccccc;
            }




            /* ANIMATIONS */

            /* Simple CSS3 Fade-in-down Animation */
            .fadeInDown {
                -webkit-animation-name: fadeInDown;
                animation-name: fadeInDown;
                -webkit-animation-duration: 1s;
                animation-duration: 1s;
                -webkit-animation-fill-mode: both;
                animation-fill-mode: both;
            }

            @-webkit-keyframes fadeInDown {
                0% {
                    opacity: 0;
                    -webkit-transform: translate3d(0, -100%, 0);
                    transform: translate3d(0, -100%, 0);
                }
                100% {
                    opacity: 1;
                    -webkit-transform: none;
                    transform: none;
                }
            }

            @keyframes fadeInDown {
                0% {
                    opacity: 0;
                    -webkit-transform: translate3d(0, -100%, 0);
                    transform: translate3d(0, -100%, 0);
                }
                100% {
                    opacity: 1;
                    -webkit-transform: none;
                    transform: none;
                }
            }

            /* Simple CSS3 Fade-in Animation */
            @-webkit-keyframes fadeIn { from { opacity:0; } to { opacity:1; } }
            @-moz-keyframes fadeIn { from { opacity:0; } to { opacity:1; } }
            @keyframes fadeIn { from { opacity:0; } to { opacity:1; } }

            .fadeIn {
                opacity:0;
                -webkit-animation:fadeIn ease-in 1;
                -moz-animation:fadeIn ease-in 1;
                animation:fadeIn ease-in 1;

                -webkit-animation-fill-mode:forwards;
                -moz-animation-fill-mode:forwards;
                animation-fill-mode:forwards;

                -webkit-animation-duration:1s;
                -moz-animation-duration:1s;
                animation-duration:1s;
            }

            .fadeIn.first {
                -webkit-animation-delay: 0.4s;
                -moz-animation-delay: 0.4s;
                animation-delay: 0.4s;
            }

            .fadeIn.second {
                -webkit-animation-delay: 0.6s;
                -moz-animation-delay: 0.6s;
                animation-delay: 0.6s;
            }

            .fadeIn.third {
                -webkit-animation-delay: 0.8s;
                -moz-animation-delay: 0.8s;
                animation-delay: 0.8s;
            }

            .fadeIn.fourth {
                -webkit-animation-delay: 1s;
                -moz-animation-delay: 1s;
                animation-delay: 1s;
            }
            .fadeIn.fifth {
                -webkit-animation-delay: 1.2s;
                -moz-animation-delay: 1.2s;
                animation-delay: 1.2s;
            }
            .fadeIn.sixth {
                -webkit-animation-delay: 1.4s;
                -moz-animation-delay: 1.4s;
                animation-delay: 1.4s;
            }
            .fadeIn.seventh {
                -webkit-animation-delay: 1.6s;
                -moz-animation-delay: 1.6s;
                animation-delay: 1.6s;
            }
            .fadeIn.eighth {
                -webkit-animation-delay: 1.8s;
                -moz-animation-delay: 1.8s;
                animation-delay: 1.8s;
            }

            /* Simple CSS3 Fade-in Animation */
            .underlineHover:after {
                display: block;
                left: 0;
                bottom: -10px;
                width: 0;
                height: 2px;
                background-color: #56baed;
                content: "";
                transition: width 0.2s;
            }

            .underlineHover:hover {
                color: #0d0d0d;
            }

            .underlineHover:hover:after{
                width: 100%;
            }



            /* OTHERS */

            *:focus {
                outline: none;
            } 

            #icon {
                width:60%;
            }
        </style>
    </head>

    <body>
        <div class="wrapper fadeInDown">
            <div id="formContent">
                <form:form action="registerUser" modelAttribute="newuser" method="POST">
                    <h2>Create your account</h2>

                    <table>
                        <tbody>
                            <tr>
                                <td><label>First name:</label></td>
                                <td>
                                    <form:input path="firstname"  class="fadeIn first"/>
                                    <form:label path="firstname"></form:label>
                                    <form:errors path="firstname" ></form:errors> 
                                    </td>

                                </tr>

                                <tr>
                                    <td><label>Last name:</label></td>
                                    <td><form:input path="lastname" class="fadeIn second"/>
                                    <form:label path="lastname"></form:label>   
                                    <form:errors path="lastname"></form:errors>
                                    </td>   
                                </tr>

                                <tr>
                                    <td><label>Username:</label></td>
                                    <td><form:input path="username" class="fadeIn third"/>
                                    <form:label path="username"></form:label> 
                                    <form:errors path="username"></form:errors>
                                    </td>   
                                </tr>
                                <tr>
                                    <td><label>Password:</label></td>
                                    <td><form:input path="password" class="fadeIn fourth"/>
                                    <form:label path="password"></form:label> 
                                    <form:errors path="password" ></form:errors>
                                    </td>   
                                </tr>
                                <tr>
                                    <td><label>Confirm Password:</label></td>
                                    <td><form:input path="matchingpassword" class="fadeIn fifth"/>
                                    <form:label path="matchingpassword"></form:label> 
                                    <form:errors path="matchingpassword" ></form:errors>
                                    </td>   
                                </tr>
                                <tr>
                                    <td><label>Email</label></td>
                                    <td><form:input path="email" class="fadeIn sixth"/>
                                    <form:label path="email" />
                                    <form:errors path="email"></form:errors>
                                    </td>
                                </tr>
                                <tr>
                                    <td><label></label></td>
                                    <td><input type="submit" id="submit" value="Submit" class="fadeIn seventh"/></td>   
                                </tr>
                                <tr>
                                    <td><label>Roles</label></td>
                                    <td><form:select path="roleId" cssClass="form-control">
                                        <form:options items="${rolesapp}" itemValue="roleId" itemLabel="role" />
                                    </form:select>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </form:form>


                <div style="clear; both;"></div

                <p>
                    <input type="button" id= "loginButton" class="fadeIn eighth" value="Go To Login Page"
                           onclick="window.location.href = '/signIn/showLoginForm'; return false;"/>
                </p>

            </div>

    </body>
</html>
