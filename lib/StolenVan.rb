


class PreciousMetals

  attr_reader :value

  STREETPRICE = 1000

  def initialize
    @value = STREETPRICE
  end

  def sell
    puts "you sold the #{self} for #{@value}"
  end
end

class Compost

  attr_reader :value

  STREETPRICE = 1

  def initialize
    @value = STREETPRICE
  end

  def sell
    puts "you sold the #{self} for #{@value}"
  end
end

class ToiletRoll

  attr_reader :value

  STREETPRICE = 9999

  def initialize
    @value = STREETPRICE
  end

  def sell
    puts "you sold the #{self} for #{@value}"
  end
end

class Electric

  attr_reader :getaway_speed

  MAX_SPEED = 45

  def initialize
    @getaway_speed = MAX_SPEED
  end

  def escape
    puts 'You drive away silently in your new electric van'
  end
end

class Petrol

  attr_reader :getaway_speed

  MAX_SPEED = 95

  def initialize
    @getaway_speed = MAX_SPEED
  end

  def escape
    puts 'The engines roars as you speed away from the scene and manage to lose the cops'
  end
end

class StolenVan

  attr_reader :goods, :motor

  CONTENTS = [PreciousMetals, Compost, ToiletRoll]

  MPG = [Electric, Petrol]

  def initialize(goods: CONTENTS.sample.new, motor: MPG.sample.new )
    @goods = goods
    @motor = motor
  end

  def sell_goods
    @goods.sell
  end

  def get_away
    @motor.escape
  end

end
