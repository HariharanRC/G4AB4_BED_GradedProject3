<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      rel="stylesheet"
      href="../static/css/edit-page.css"
      th:href="@{/css/edit-page.css}"
      type="text/css"
    />
    <title>edit page</title>
  </head>
  <body>
    <div class="container--header">
      <header>
        <h1>Ticket Tracker Application</h1>
        <a
          href="/admin/tickets"
          th:href="@{/admin/tickets}"
          class="link--tickets"
          >Tickets</a
        >
      </header>
    </div>
    <main>
      <div class="form--heading">
        <h2 th:if="(${ticket.id} == 0)">Create Ticket</h2>
        <h2 th:unless="(${ticket.id} == 0)">Edit Ticket</h2>
      </div>
      <form
        action=""
        th:action="@{/admin/new-update-ticket}"
        method="post"
        th:object="${ticket}"
      >
        <input type="hidden" name="id" th:value="*{id}" />
        <div>
          <label for="title">Title</label>
          <input
            type="text"
            th:field="*{title}"
            id="title"
            class="ip--text"
            minlength="3"
            maxlength="50"
            required
          />
        </div>
        <div>
          <label for="short-desc">Ticket Short Description</label>
          <textarea
            th:field="*{shortDesc}"
            id="short-desc"
            cols="30"
            rows="10"
            class="ip--textarea"
            minlength="3"
            maxlength="200"
            required
          ></textarea>
        </div>
        <div>
          <label for="createDate"> Ticket Creation Date</label>
          <input
            type="date"
            th:field="*{createDate}"
            id="createDate"
            required
          />
        </div>
        <div class="div-btn">
          <input
            th:if="(${ticket.id} == 0)"
            type="submit"
            value="Save"
            class="div-btn--save"
          />
          <input
            th:unless="(${ticket.id} == 0)"
            type="submit"
            value="Update"
            class="div-btn--update"
          />
          <input type="reset" value="reset" class="div-btn--reset" />
        </div>
      </form>
    </main>
    <footer>
      <p>Copyright &copy; 2023 XYZ Learning All rights reserved</p>
    </footer>
  </body>
</html>