  class LRUCache
    attr_reader :size
    def initialize(size)
      cache = Array.new(size)
      @size = size
    end

    def count
      cache.length
    end

    def add(el)
        @cache.push(el)
        if self.count < @size
        @cache.shift
        end
    end

    def show
      # shows the items in the cache, with the LRU item first
    end

    private
    # helper methods go here!

  end