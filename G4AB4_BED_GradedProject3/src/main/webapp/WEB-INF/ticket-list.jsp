<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      rel="stylesheet"
      href="../static/css/ticket-list.css"
      th:href="@{/css/ticket-list.css}"
      type="text/css"
    />
    <title>ticket Tracker Application</title>
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
        <form
          action="/admin/edit-page"
          th:action="@{/admin/edit-page}"
          method="get"
        >
          <input type="hidden" name="id" th:value="0" />
          <input type="submit" value="New Ticket" class="ip--New-Ticket" />
        </form>
      </header>
    </div>

    <main>
      <div class="container--head">
        <h2>List of Tickets</h2>
        <form
          action="/admin/search-ticket"
          th:action="@{/admin/search-ticket}"
          method="get"
        >
          <input
            type="text"
            name="title"
            th:value="${title}"
            placeholder="Search By Title"
            class="ip--text"
          />
          <input type="submit" value="Search" class="ip--search" />
        </form>
      </div>

      <div class="container--table">
        <div class="table">
          <div class="tr--head">
            <div class="th th--1"><strong>#</strong></div>
            <div class="th th--2"><strong>Ticket Title</strong></div>
            <div class="th th--3">
              <strong>Ticket Short Description</strong>
            </div>
            <div class="th th--4"><strong>Ticket Created on</strong></div>
            <div class="th th--5"><strong>Action</strong></div>
          </div>

          <div
            class="tr--body"
            th:if="(${#lists.size(tickets)} > 0)"
            th:each="ticket : ${tickets}"
          >
            <div class="td td--1" th:text="${ticket.id}">id</div>
            <div class="td td--2" th:text="${ticket.title}">title</div>
            <div class="td td--3" th:text="${ticket.shortDesc}">
              Lorem ipsum dolor, sit amet consectetur adipisicing elit. Commodi
              aliquid molestias ipsum. Ipsa voluptatibus velit quia inventore!
              Magni nulla totam distinctio placeat quos autem et labore enim,
              mollitia tempora laudantium vero recusandae quae quia.
            </div>
            <div
              class="td td--4"
              th:text="${#dates.format(ticket.createDate, 'dd-MM-yyyy')}"
            >
              10-12-2020
            </div>
            <div class="td td--5">
              <!-- update -->
              <form
                action="/admin/search-ticket"
                th:action="@{/admin/edit-page}"
                method="get"
              >
                <input type="hidden" name="id" th:value="${ticket.id}" />
                <input type="submit" value="Update" class="btn btn--update" />
              </form>
              <!-- delete -->
              <form
                action="/admin/search-ticket"
                th:action="@{/admin/delete-ticket}"
                method="get"
              >
                <input type="hidden" name="id" th:value="${ticket.id}" />
                <input type="submit" value="Delete" class="btn btn--delete" />
              </form>
              <!-- view -->
              <form
                action="/admin/search-ticket"
                th:action="@{/admin/view-page}"
                method="get"
              >
                <input type="hidden" name="id" th:value="${ticket.id}" />
                <input type="submit" value="View" class="btn btn--view" />
              </form>
            </div>
          </div>

          <div th:unless="${#lists.size(tickets)} > 0" class="tr--body">
            <div class="td td--1">none</div>
            <div class="td td--2">none</div>
            <div class="td td--3">none</div>
            <div class="td td--4">none</div>
            <div class="td td--5">none</div>
          </div>
        </div>
      </div>
    </main>

    <footer>
      <p>Copyright &copy; 2023 XYZ Learning All rights reserved</p>
    </footer>
  </body>
</html>