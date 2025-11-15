# 705. Design HashSet

module HashPractice
  class DesignHashset
    class MyHashSet
      def initialize
        @v = Array.new(1000000 + 10, 0)
      end

      def add(key)
        @v[key] = 1
      end

      def remove(key)
        @v[key] = 0
      end

      def contains(key)
        @v[key] == 1
      end
    end
  end
end
