# @param {String[]} words
# @return {String[]}
def class_name_from_file(file_path = __FILE__)
  File.basename(file_path, '.rb').split('_').map(&:capitalize).join
end

module ArrayPlactice
  class_name = class_name_from_file
  klass = Class.new do
    class << self
      def binary_insertion_sort(arr)
        (1...arr.length).each do |i|
          key = arr[i]
          left = 0
          right = i - 1
      
          # 二分探索で挿入位置を探す
          while left <= right
            mid = (left + right) / 2
            if arr[mid] > key
              right = mid - 1
            else
              left = mid + 1
            end
          end
      
          # 探した位置に差し込む（間をずらす）
          j = i - 1
          while j >= left
            arr[j + 1] = arr[j]
            j -= 1
          end
          arr[left] = key
        end
        arr
      end
    end
  end
  const_set(class_name, klass)
end
