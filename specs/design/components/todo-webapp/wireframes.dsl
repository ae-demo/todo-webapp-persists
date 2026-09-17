screen TodoList "A signed-in user's private todo list"
  navbar "Todo"
  heading "My Todos"
  row
    text "Everything you need to do"
    right
    button "Add Todo" primary -> AddTodo
  table "Done | Title | "
    row "checkbox | Buy groceries | Edit -> EditTodo"
    row "checkbox | Finish report | Edit -> EditTodo"
    row "checkbox | Call dentist | Edit -> EditTodo"

screen AddTodo "Add a new todo"
  navbar "Todo"
  heading "Add Todo"
  input "Title"
  row
    right
    button "Cancel" -> TodoList
    button "Save" primary -> TodoList

screen EditTodo "Edit or remove a todo"
  navbar "Todo"
  heading "Edit Todo"
  input "Title"
  checkbox "Completed"
  row
    button "Delete" danger -> TodoList
    right
    button "Cancel" -> TodoList
    button "Save" primary -> TodoList

flow "Manage my todos"
  role "User"
  description "A signed-in user views, adds, edits, completes and deletes their own todos"
  TodoList
  AddTodo
  EditTodo
