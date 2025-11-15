# @param {String[]} words
# @return {String[]}
def class_name_from_file(file_path = __FILE__)
  File.basename(file_path, '.rb').split('_').map(&:capitalize).join
end

module Medium
  class_name = class_name_from_file
  klass = Class.new do
    class << self
      def find_diagonal_order(mat:)
        @one_dim_index      = 0
        @two_dim_index      = 0
        total_value_amount = mat.flatten.count
        @vector = 'up'

        @result = []

        total_value_amount.times do |t|
          binding.pry if t == 4
          #　一番最初の一歩目
          if initial?
            insert!(mat)

            slide_to_right!
          # 初期配列で現在右上がり中だが、末端がない時
          elsif @one_dim_index == 0 && is_upper_vector?
            insert!(mat)

            change_vector_to_down!
           # もしダウナーで、最左なら
          elsif is_dowa sasner_vector? && is_most_left?
            insert!(mat)
            slide_to_right!
            change_vector_to_up!
          # もしダウナーで最後尾に来たら
          elsif is_downer_vector? && last_in_arr?(mat)
            insert!(mat)

            slide_to_right!
          elsif is_upper_vector?
            insert!(mat)

            if is_exist_next_upper?(mat)
              slide_to_right!
              to_up!
            end
          end
        end


        @result
      end

      def initial?
        @one_dim_index == 0 && @two_dim_index == 0
      end

      def insert!(mat)
        @result << mat[@one_dim_index][@two_dim_index]
      end

      def change_vector_to_up!
        @vector        = 'up'
      end

      def change_vector_to_down!
        @vector        = 'down'
        @one_dim_index += 1
        @two_dim_index -= 1
      end

      def is_upper_vector?
        @vector == 'up'
      end

      def is_downer_vector?
        @vector == 'down'
      end

      def is_most_left?
        @two_dim_index == 0
      end

      def last_in_arr?(mat)
        mat[@one_dim_index + 1] == nil
      end

      ## Check presence
      def none_right_value?(mat)
        mat[@one_dim_index][@two_dim_index + 1] == nil
      end

      def is_exist_next_upper?(mat)
        mat[@one_dim_index - 1][@two_dim_index + 1] != nil?
      end

      ## Slide to side
      def slide_to_right!
        @two_dim_index += 1
      end

      def to_up!
        @one_dim_index += 1
      end




    end
  end
  const_set(class_name, klass)
end



# [1,2]
# [3,4]
# -> [1,2,3,4]

# 0-1-0-1



# [1,2,3]
# [4,5,6]
# [7,8,9]
# -> [1,2,4,7,5,3,6,8,9]


#　結局移動範囲は２パターン　※ 2通りの合計４パターンしかないので、それを忠実に再現すればいい。
# もしタイムリミットになる場合は、別の方法を考えましょう。
# 斜め上に上昇する
  # もし一つ上の配列がなかったら、今ある配列の次に進む
  # もし一つ上の配列があり、かつインデックス＋１が存在する場合、そいつ

# 斜め下に下降する
  # もし一つ下の配列がない場合、横にずれる
  # もし一つ下の配列があり、かつindex-1が存在する場合、そいつ

# インデックスの傾向とかある？->なさそうだ
# 0-1-0- 0-1-2- 2-1-2