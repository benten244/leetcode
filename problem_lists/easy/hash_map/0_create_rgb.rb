require "pry"

module HashMap

  class CreateRGBService

    class << self
      def to_hex(r, g, b)
        [r, g, b].map { |c| c.to_s(16).rjust(2, "0")}.join("")
      end

      def to_ints(hex)
        hex[1..-1].scan(/../).map { |s| s.to_i(16)}
      end
    end
  
  end

end