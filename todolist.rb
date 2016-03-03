class TodoList
    attr_reader :title, :items

    def initialize(list_title)
      @title = list_title
      @items = Array.new
    end

    def add_item(new_item)
      item = Item.new(new_item)
      @items.push(item)
    end

    def print_todo_list
      dashes = "-" * self.title.length
      puts dashes
      puts self.title
      puts dashes
      line_number = 1
      self.items.each do |item|
        item_string = "#{line_number} - #{item.description} ".ljust(30)
        completed_string = "Completed: #{item.completed_status}\n"
        printf item_string + completed_string
        line_number += 1
      end
    end
end

class Item
    attr_reader :description, :completed_status

    def initialize(item_description)
      @description = item_description
      @completed_status = false
    end
end
