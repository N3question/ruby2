# オーバーライドの書き方
class Car
  def run(distance)
    puts "車で#{distance}キロ走ります。"
  end
end

class Bus < Car
 def run(distance)
  puts "バスで#{distance}キロ走ります。"
 end
end

bus=Bus.new
bus.run(5)

car=Car.run #追加...②
car.run(5) #追加...②

# BusクラスとCarクラスの両方にrunメソッドが定義
# Busクラスの「バスで5キロ走ります。」が出力

# 変更箇所...②
# オーバーライドしたBusクラスのメソッド内から
# Carクラスを呼び出すこともできる