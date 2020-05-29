
class Queue

    def initialize
        @q_array = []
    end    

    def enqueue(el)
        @q_array.push(el)
    end    

    def dequeue
        @q_array.shift
    end    

    def peek
        @q_array.first
    end    

end

