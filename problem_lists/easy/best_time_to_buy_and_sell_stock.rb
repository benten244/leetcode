# @param {Integer[]} prices
# @return {Integer}

    # 思考メモ
    #   nの二乗になると、100億の計算結果になる。
    #   多分two_sumの考え方でできるかも。
    #   ただ配列で2周するだけなら、20万通りだから、そこまでかも。

# def max_profit(prices)

#     buy_info = decide_purchasing_date(prices)

#     purchasing_price = buy_info[:Price]

#     sell_target_price = prices[(buy_info[:Day]+1)..-1]

#     selling_price = check_maximum_price(sell_target_price, purchasing_price)

#     benefit = selling_price - purchasing_price

#     benefit < 0 ? 0 : benefit
# end


# def decide_purchasing_date(prices)

#     purchasing_date_log = []
#     pre_minimum_price = 10000
#     day = 0

#     prices.each do |price|
#        if price < pre_minimum_price
#            pre_minimum_price = price
#            purchasing_date_log << day
#        end

#        day += 1
#     end

#     {
#         "Price": pre_minimum_price,
#         "Day": purchasing_date_log.last
#     }

# end

# def check_maximum_price(sell_target_price, purchasing_price)
#     pre_maximum_price = 0

#     sell_target_price.each do |price|
#        if purchasing_price < price && pre_maximum_price < price
#            pre_maximum_price = price
#        end
#     end

#     pre_maximum_price
# end


# ↑だと、過度に単純化している。
# 多分そんなことしなくても、毎回計算する中で最小値と最大値を記録して残して計算すれば良さそう。
# 問題も売却日が後というからややこしいが、配列の順と同じだから、難しく考えなくて良さそう。

# 利益 = 最大値 - 最小値
# 最小値：常に今までの最小値と比較して更新する。
# 最大値：これは保持する必要ない。利益だけ更新し、現状値と最小値の差分が大きいかどうかを見れば良い。

def max_profit(prices)

  min_price = 10000
  max_profit = 0

  prices.each do |price|
    min_price = [min_price, price].min
    max_profit = [max_profit, price - min_price].max
  end

  max_profit
end
