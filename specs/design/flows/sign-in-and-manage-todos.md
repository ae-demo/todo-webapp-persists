# Sign In and Manage Todos

A User signs in through Thunder and then manages their own private todo list,
which the API persists to the database on every change.

```mermaid
sequenceDiagram
    actor User
    participant todo-webapp
    participant thunder
    participant todo-api

    User->>todo-webapp: open app
    todo-webapp->>thunder: redirect to sign in
    thunder-->>todo-webapp: signed in (token)
    todo-webapp->>todo-api: list my todos
    todo-api-->>todo-webapp: todos
    User->>todo-webapp: add / edit / complete / delete todo
    todo-webapp->>todo-api: create / update / delete todo
    todo-api-->>todo-webapp: updated todo list
```

