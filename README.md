# Todo Manager App

## Level 7

### Use ERB to render todo page and deploy to Heroku

## Direct Links

1. [`app/views/todos/_todos-section.html.erb`](https://github.com/abhinandanarya06/todo_manager/blob/main/app/views/todos/_todos-section.html.erb)
2. [`app/views/todos/todos.html`](https://github.com/abhinandanarya06/todo_manager/blob/main/app/views/todos/todos.html.erb)
3. [`app/assets/`](https://github.com/abhinandanarya06/todo_manager/tree/main/app/assets)

## API Usage

### Deployed on [https://abhi-todo-manager-saas-201.herokuapp.com](https://abhi-todo-manager-saas-201.herokuapp.com)

### FOR TODO DATA

- Get List of Todos (with designed site)
  - `GET /todos`
- Get Single Todo of given id = `:id`
  - `GET /todos/:id/`
- Add new Todo
  - `POST /todos`
    - `todo_text` : Todo String
    - `due_date` : eg: 2021-Feb-16
- Mark complete status on given completed = `completed`
  - `PATCH /todos/:id/`
    - `id`: Todo id
    - `completed` : Todo status you want to set
