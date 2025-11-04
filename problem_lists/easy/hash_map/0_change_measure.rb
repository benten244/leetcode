require "pry"

module HashMap

  class ChangeMeasure

    class << self
      def convert_length(val, original, new)
        measure_hash = {
          m: 1.00,
          ft: 3.28,
          in: 39.27
        }

        attach = measure_hash[new.to_sym] / measure_hash[original.to_sym]

        (val * attach).round(2)
      end
    end
  
  end

end



class Test
   fluits = []
end