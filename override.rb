# オーバーライドの書き方
class Car
  def run(distance)
    puts "車で#{distance}キロ走ります。"
  end
end

class Bus < Car
 def run(distance)
  super #追加...③
  # 「super」を記述しているのでCarクラスに定義されている
  # 「車で5キロ走ります。」が出力されます。
  puts "30人を乗せて走っています。" #追加...③
 end
end

bus=Bus.new
bus.run(5)

# car=Car.run #追加...②　③で非表示。
# car.run(5) #追加...②　③で非表示。

# BusクラスとCarクラスの両方にrunメソッドが定義
# Busクラスの「バスで5キロ走ります。」が出力

# 変更箇所...②
# オーバーライドしたBusクラスのメソッド内から
# Carクラスを呼び出すこともできる

# 変更箇所...③
# メソッド内に「super」と定義するだけ
# 親クラスのメソッドにはない要素を追加したい時などに使用