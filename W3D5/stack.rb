class Stack

    def initialize
        @s_array = []

    end    

    def push(el)
        s_array.push(el)
    end
    
    def pop
        s_array.pop
    end
    
    def peek
        s_array.last
    end    


end    
