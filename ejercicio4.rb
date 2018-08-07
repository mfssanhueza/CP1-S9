class Dog
  def initialize(hash)
    @hash = hash
  end

  def bark
    puts "#{@hash.values[0]} está ladrando."
  end

  def show_information
    puts "#{@hash.values[0]} es un perro de #{@hash.keys[1]} #{@hash.values[1]} y #{@hash.keys[2]} #{@hash.values[2].downcase}."
  end
end

propiedades = { nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café' }
dog = Dog.new(propiedades)
puts dog.bark
puts dog.show_information
