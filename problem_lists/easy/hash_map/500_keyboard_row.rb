# @param {String[]} words
# @return {String[]}

module HashMap
  class KeyboardRow
    class << self
      def find_words(words)
        hash = keyboard_hash

        result = []

        words.each do |word|

            checker = []
            correct = []
            word.split("").each do |chara|
                chara = chara.downcase.to_sym
   
                checker << hash[chara]

                break if checker[0] != hash[chara]

                correct << hash[chara]
            end

            result << word if correct.count == word.length
        end

        result
      end

      def keyboard_hash
        {
            q: 1,
            w: 1,
            e: 1,
            r: 1,
            t: 1,
            y: 1,
            u: 1,
            i: 1,
            o: 1,
            p: 1,
            a: 2,
            s: 2,
            d: 2,
            f: 2,
            g: 2,
            h: 2,
            j: 2,
            k: 2,
            l: 2,
            z: 3,
            x: 3,
            c: 3,
            v: 3,
            b: 3,
            n: 3,
            m: 3
        }
      end
    end
  end
end
