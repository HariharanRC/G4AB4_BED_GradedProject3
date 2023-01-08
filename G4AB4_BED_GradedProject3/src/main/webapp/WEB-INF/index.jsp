<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      rel="stylesheet"
      href="../static/css/index.css"
      th:href="@{/css/index.css}"
      type="text/css"
    />
    <title>landing page</title>
  </head>
  <body>
    <img
      src="../static/img/megan-bucknall-2z8TwLsoei4-unsplash.jpg"
      th:src="@{/img/megan-bucknall-2z8TwLsoei4-unsplash.jpg}"
      alt="ticket booking counter"
      class="img--bg"
    />
    <div class="container">
      <h1>WelCome to the Unique Ticket tracker</h1>
      <a href="/admin/tickets" th:href="@{/admin/tickets}">
        Ticket Tracker Application</a
      >
    </div>
  </body>
</html>