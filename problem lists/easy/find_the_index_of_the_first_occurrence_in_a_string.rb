# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
  @haystack = haystack
  @needle = needle

  return -1 if !@haystack.include?(@needle)

  return result = fetch_match_combo_index
end

def fetch_match_combo_index
  needle = @needle.split("")

  @haystack.split("").count.times do |haystack_count|
     if @haystack[haystack_count] == @needle[0]

          judge = []

          needle.count.times do |nc|
              if  @haystack[haystack_count + nc] == needle[nc]
                  judge << @haystack[haystack_count + nc]
              end

              break if judge.count == needle.count
          end

        result = haystack_count if judge.count == needle.count
     end

     @result = result

     break if p !@result.nil?
  end

  @result
end
