<%@ page import="java.util.ArrayList" %>
<%@ page import="db.Item" %><%--
  Created by IntelliJ IDEA.
  User: 1
  Date: 26.07.2022
  Time: 16:23
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
        <div class="row mt-3">
          <div class="col-6 mx-auto">
              <%
                  Item items = (Item)request.getAttribute("tovarlar");

                  if (items != null) {
              %>
            <form action="/details" method="get">
              <div class="row mt-3">
                <div class="col-12">
                  <label>
                    NAME:
                  </label>
                </div>
                <div class="row mt-3">
                  <div class="col-12">
<%--                    <input name="item_name" type="text" placeholder="Insert name" required value="<%=items.getName()%>"> <br>--%>
                      <label>
                          <strong><%=items.getName()%></strong>
                      </label>
                  </div>
                </div>

                <div class="rwo mt-3">
                  <div class="col-12">
                    <label>
                      PRICE:
                    </label>
                  </div>
                </div>

                <div class="row mt-3">
                  <div class="col-12">
<%--                    <input name="item_price" type="number" placeholder="Insert price" value="<%=items.getPrice()%>"> <br>--%>
                      <label>
                          <strong><%=items.getPrice()%></strong>
                      </label>
                  </div>
                </div>

                <div class="row mt-3">
                  <div class="col-12">
                    <label>
                      AMOUNT:
                    </label>
                  </div>
                </div>

                <div class="row mt-3">
                  <div class="col-12">
<%--                    <input name="item_amount" type="number" placeholder="Insert amount" required value="<%=items.getAmount()%>"> <br>--%>
                      <label>
                          <strong><%=items.getAmount()%></strong>
                      </label>
                  </div>
                </div>
              </div>
            </form>
              <%
                  }
              %>
          </div>
        </div>
      </div>
</body>
</html>
