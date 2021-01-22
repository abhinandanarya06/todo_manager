# Todo Manager App

### Deployed on [https://abhi-todo-manager-saas-201.herokuapp.com](https://abhi-todo-manager-saas-201.herokuapp.com)

### FOR TODO Manager Guide

- Sign up
  - `GET /user/new`
- Sign in
  - `GET /signin`
- Sign out
  - `GET /signout`
- Get List of Todos (with designed site)
  - `GET /todos`
- Add new Todo
  - `POST /todos`
    - `todo_text` : Todo String
    - `due_date` : eg: 2021-Feb-16
- Mark complete status on given completed = `completed`
  - `PATCH /todos/:id/`
    - `id`: Todo id
    - `completed` : Todo status you want to set
