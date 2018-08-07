class Car
  def initialize(model, year)
    @model = model
    @year = year
  end

  def show_car
    puts "Mi auto favorito es un #{@model} del año #{@year}!"
  end
end

car = Car.new('Camaro', 2016)
puts car.show_car
