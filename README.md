# Todo Manager App

## Level 5:

### Add user management to the Todo Manager app

## Router Defined

- `localhost:3000`

  - Todo Management

    - `GET /todos => todos#index`
    - `GET /todos/:id/ => todos#show`
    - `POST /todos => todos#create`
    - `PATCH /todos/:id/ => todos#update`

  - User Management
    - `GET /users => users#index`
    - `POST /users => users#create`
    - `POST /users/login => users#login`

## Database Info

- `saas_db`
  - TABLE : `todos`
    - `id` : integer
    - `todo_text` : text
    - `due_date` : date
    - `completed` : bool
  - TABLE : `users`
    - `id` : integer
    - `name` : string
    - `email` : string
    - `password` : string

## API Usage

### FOR TODO DATA

- Get List of Todos
  - `GET http://localhost:3000/todos`
- Get Single Todo of given id = `:id`
  - `GET http://localhost:3000/todos/:id/`
- Add new Todo
  - `POST http://localhost:3000/todos?todo_text=<TODO_STRING>&due_date=<DUE_DATE>`
  - `DUE_DATE` FORMAT : YYYY-MM-DD
  - Example : 2020-Feb-16
- Mark complete status on given completed = `completed`
  - `PATCH http://localhost:3000/todos/:id/?completed=<COMPLETE_STATUS>`

### FOR USER DATA

- Get List of Users
  - `GET http://localhost:3000/users`
- Create new user account
  - `POST http://localhost:3000/users?name=<USER_NAME>&email=<USER_EMAIL>&password=<USER_PASSWORD>`
- Check if user exist or not
  - `POST http://localhost:3000/users/login?email=<USER_EMAIL>&password=<USER_PASSWORD>`
