require_relative 'todolist.rb'

# Creates a new todo list
list = TodoList.new "Kevin's To Do List"

# Add four new items
list.add_item "Learn about Classes"
list.add_item "Do the Next Project"
list.add_item "Pet the Cat"
list.add_item "Feed the Cat"

# Print the list
list.print_todo_list

# Delete the first item
list.delete_item 1

# Print the list
list.print_todo_list

# Delete the second item
list.delete_item 2

# Print the list
list.print_todo_list

# Update the completion status of the first item to complete
list.complete 1

# Print the list
list.print_todo_list

# Update the title of the list
list.update_title "Important! Finish Soon!"

# Print the list
list.print_todo_list
