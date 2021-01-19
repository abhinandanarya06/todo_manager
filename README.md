# Todo Manager App

## Level 7

### Use ERB to render todo page and deploy to Heroku

## API Usage

### FOR TODO DATA

- Get List of Todos (with designed site)
  - `GET http://localhost:3000/todos`
- Get Single Todo of given id = `:id`
  - `GET http://localhost:3000/todos/:id/`
- Add new Todo
  - `POST http://localhost:3000/todos`
    - `todo_text` : Todo String
    - `due_date` : eg: 2021-Feb-16
- Mark complete status on given completed = `completed`
  - `PATCH http://localhost:3000/todos/:id/`
    - `id`: Todo id
    - `completed` : Todo status you want to set
