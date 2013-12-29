class Car
  DEFNAME = "CAR"
  @@count = 0

  attr_accessor :name
  
  def initialize(carname="N/A")
    @name = carname
    @@count += 1
  end
  
  public
  
  def dispName
    puts @name
  end
  
  def getCount
    return @@count
  end
  
  def accele(acceletime=1)
    print(acceletime, "秒間アクセルを踏みました\n")
    print("スピードは", calcSpeed(acceletime), "Kmです\n")
  end
  
  def brake
    puts "ブレーキを踏みました"
  end
  
  private

  def calcSpeed(acceletime)
    return acceletime * 10
  end
    
end

class Soarer < Car
  def openRoof
    puts "ルーフを開けました"
  end
  
  def accele(acceletime)
    super
    puts "加速しました"
  end
end

class Crown < Car
  def reclining
    puts "シートをリクライニングしました"
  end
end

car = Car.new("crown")
car.dispName
car.name=("civic")
car.dispName
puts Car::DEFNAME
puts car.getCount()
car2 = Car.new()
car2.dispName()
puts car2.getCount()


soarer = Soarer.new
soarer.openRoof
soarer.accele(10)

crown = Crown.new
crown.reclining
crown.accele(5)
crown.brake

