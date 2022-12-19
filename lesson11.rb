class Car
 def run(distance)
 puts "車で#{distance}キロ走ります。"
 end
end

class Truck < Car
 def run(distance)
  super
  puts "大きな荷物を乗せて走ります。"
 end
end

# car=Car  　　間違い。
# car.run(5).  間違い。

# 以下正解。
truck=Truck.new
truck.run(5)

# 以下解説
# Carクラス(親クラス)を継承しているのが
# Truckクラス(子クラス)


# superによって
# 「puts "車で#{distance}キロ走ります。"」が出力
# その下の行にTruckクラスに追加したい要素を定義
# 今回は、putsを使用
