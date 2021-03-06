  require 'byebug'
  
  class LRUCache
    attr_reader :size
    def initialize(size)
      @cache = Array.new(size, nil)
      @size = size
    end

    def count
      @cache.length
    end

    def add(el)
        no_dups(el)
        @cache.push(el)
        # debugger
       if self.size < self.count
          @cache.shift
        end
    end

    def show
      p @cache
    end

    private
    def no_dups(el)
      @cache.delete(el) if @cache.include?(el)
    end  

  end

johnny_cache = LRUCache.new(4)

  johnny_cache.add("I walk the line")
  johnny_cache.add(5)

  johnny_cache.count # => returns 2

  johnny_cache.add([1,2,3])
  johnny_cache.add(5)
  johnny_cache.add(-5)
  johnny_cache.add({a: 1, b: 2, c: 3})
  johnny_cache.add([1,2,3,4])
  johnny_cache.add("I walk the line")
  johnny_cache.add(:ring_of_fire)
  johnny_cache.add("I walk the line")
  johnny_cache.add({a: 1, b: 2, c: 3})


  johnny_cache.show # => prints [[1, 2, 3, 4], :ring_of_fire, "I walk the line", {:a=>1, :b=>2, :c=>3}]