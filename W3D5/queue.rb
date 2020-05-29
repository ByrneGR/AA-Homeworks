
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

