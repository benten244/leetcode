# 706. Design HashMap

module HashPractice
  class MyHashMap
    def initialize()
        @hash_set = Array.new((10 ** 6) + 1, 0)
    end

    def put(key, value)
        if @hash_set[key] == 0
            @hash_set[key] = [key, value]
        else
            @hash_set[key][1] = value
        end
    end

    def get(key)
        return -1 if @hash_set[key] == 0

        result = @hash_set[key]
        result[1] if result != nil
    end

    def remove(key)
        @hash_set[key] = 0 if @hash_set[key] != 0

        nil
    end

  end
end
