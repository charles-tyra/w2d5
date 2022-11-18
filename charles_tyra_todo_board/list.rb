require_relative 'item'
class List
    attr_accessor :label
    def initialize(label)
        @label = label
        @items = []
    end

    def add_item(title, deadline, description = "")
        if Item.valid_date?(deadline)
            @items << Item.new(title, deadline, description)
            return true
        end
        false
    end

    def size
        @items.length
    end 

    def valid_index?(index)
        return true if index > -1 && index < @items.length
        false
    end

    def swap(index_1, index_2)
        if !valid_index?(index_1) || !valid_index?(index_2)
            false
        else
            @items[index_1], @items[index_2] = @items[index_2], @items[index_1]
            true
        end
    end

    def [](index)
        !valid_index?(index) ? nil : @items[index]
    end

    def priority
        @items[0]
    end
end