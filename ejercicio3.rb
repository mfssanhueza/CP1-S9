class Store
  def initialize(name)
    @name = name
  end

  def name
    puts @name
  end
end
store = Store.new('Tienda 1')
puts store.name
