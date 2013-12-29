module Heikin
  def heikin(x, y)
    kekka = (x + y) / 2
    print(kekka)
  end
end

class Test
  include Heikin
  def dispHeikin(x, y)
    kekka = heikin(x, y)
    print(x, "と", y, "の平均は", kekka, "です\n")
  end
end

test = Test.new
test.dispHeikin(10, 8)
