class Stack

    def initialize
        @s_array = []

    end    

    def push(el)
        @s_array.push(el)
    end
    
    def pop
        @s_array.pop
    end
    
    def peek
        @s_array.last
    end    


end    

class Queue

    def initialize
        @q_array = []
    end    

    def enqueue(el)
        @q_array.unshift(el)
    end    

    def dequeue
        @q_array.shift
    end    

    def peek
        @q_array.first
    end    

end

class Map

    def initialize
    @map_a = []
    end   

    def set(key, value)
        if !@map_a.flatten.include?(key)
        @map_a << [key, value]
    end    

    def get(key)
        @map_a.each do |sub| 
            if sub[0].include?(key)
                return sub
            end
        end        
    end  
    
    def delete(key)
        @map_a.each do |sub| 
            if sub[0].include?(key)
                @map_a.delete(sub)
            end   
        end    
    end    

end    

