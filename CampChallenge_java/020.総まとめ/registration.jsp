<%-- 
    Document   : myhistory
    Created on : 2018/08/30, 17:59:49
    Author     : satonana
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession"
        import="kagoyume.UserData"
%>
<jsp:include page="header.jsp" flush="true"/>
<%
    request.setCharacterEncoding("UTF-8");
    HttpSession hs = request.getSession();
    UserData udb = null;
    boolean reinput = false;
    if (request.getParameter("mode") != null && request.getParameter("mode").equals("REINPUT")) {
        reinput = true;
        udb = (UserData) hs.getAttribute("udb");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            

            /* Form Layout */
            .form-wrapper {
                background: #fafafa;
                margin: 3em auto;
                padding: 0 1em;
                max-width: 370px;
            }

            h1 {
                text-align: center;
                padding: 1em 0;
            }

            form {
                padding: 0 1.5em;
            }

            .form-item {
                margin-bottom: 0.75em;
                width: 100%;
            }

            .form-item input {
                background: #fafafa;
                border: none;
                border-bottom: 2px solid #e9e9e9;
                color: #666;
                font-family: 'Open Sans', sans-serif;
                font-size: 1em;
                height: 50px;
                transition: border-color 0.3s;
                width: 100%;
            }

            .form-item input:focus {
                border-bottom: 2px solid #c0c0c0;
                outline: none;
            }

            .button-panel {
                margin: 2em 0 0;
                width: 100%;
            }

            .button-panel .button {
                background: #f16272;
                border: none;
                color: #fff;
                cursor: pointer;
                height: 50px;
                font-family: 'Open Sans', sans-serif;
                font-size: 1.2em;
                letter-spacing: 0.05em;
                text-align: center;
                text-transform: uppercase;
                transition: background 0.3s ease-in-out;
                width: 100%;
            }

            .button:hover {
                background: #ee3e52;
            }

            .form-footer {
                font-size: 1em;
                padding: 2em 0;
                text-align: center;
            }

            .form-footer a {
                color: #8c8c8c;
                text-decoration: none;
                transition: border-color 0.3s;
            }

            .form-footer a:hover {
                border-bottom: 1px dotted #8c8c8c;
            }

        </style>
        <title>新規登録</title>
    </head>
    <body>


        <div class="form-wrapper">
            <h1>New Registration</h1>
            <form action = "RegistrationConfirm" method = "post" >
                <div class="form-item">
                    <label for="name"></label>
                    <input type = "text" name = "name"  placeholder="name" value="<%
                        if (reinput) {
                            out.print(udb.getName());
                        }%>">
                </div>
                <div class="form-item">
                    <label for="password"></label>
                    <input type = "text" name="password" placeholder="password" value="<%
                        if (reinput) {
                            out.print(udb.getPassword());
                        }%>">
                </div>
                <div class="form-item">
                    <label for="mail"></label>
                    <input type = "text" name="mail" placeholder="mail" value="<%
                        if (reinput) {
                            out.print(udb.getMail());
                        }%>">
                </div>
                <div class="form-item">
                    <label for="address"></label>
                    <input type = "text" name="address" placeholder="address" value="<%
                        if (reinput) {
                            out.print(udb.getAddress());
                        }%>">
                </div>
                <div class="button-panel">
                    <input type="submit" class="button" title="New Registration" value="GO">
                </div>
            </form>
            <div class="form-footer">
                <p><a href="javascript:history.back()">back</a></p>
                
            </div>
        </div>
    </body>
</html>