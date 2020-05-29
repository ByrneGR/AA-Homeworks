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

