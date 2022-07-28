<%@ page import="java.util.ArrayList" %>
<%@ page import="db.Item" %><%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 26.07.2022
  Time: 15:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
      <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
              rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
              crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
                crossorigin="anonymous"></script>
          <title>Title</title>
      </head>
      <body>

          <div class="container">
            <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #004000">
              <div class="container-fluid">
                <a class="navbar-brand" href="#">BITLAB SHOP</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                  <div class="navbar-nav">
                    <a class="nav-link" aria-current="page" href="/index">ALL ITEMS</a>
                    <a class="nav-link" href="/additem.jsp">ADD ITEM</a>
                  </div>
                </div>
              </div>
            </nav>
          </div>

          <div class="container">
            <table class="table">
              <thead>
              <tr>
                <th scope="col">ID</th>
                <th scope="col">NAME</th>
                <th scope="col">PRICE</th>
                <th scope="col">AMOUNT</th>
                <th scope="col">DETAILS</th>
              </tr>
              </thead>
              <tbody>
              <%
                ArrayList<Item> items = (ArrayList<Item>) request.getAttribute("tovarlar");
                if (items != null) {
                  for (Item itm : items) {
              %>
              <tr>
                <th scope="row"><%=itm.getId()%></th>
                <td><%=itm.getName()%></td>
                <td><%=itm.getPrice()%></td>
                <td><%=itm.getAmount()%></td>
                <td><a href="/details?id=<%=itm.getId()%>" class="btn btn-dark btn-sm" style="background-color: black; color: white; text-decoration-line: none">DETAILS</a></td>
              </tr>
              <%
                    }
                }
              %>
              </tbody>
            </table>
          </div>

      </body>
</html>
