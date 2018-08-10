class Product
  attr_reader :name, :size
  def self.new_catalog
    file = File.new('new_catalog', 'w')
    file.write('')
    file.close
    file = File.open('new_catalog', 'a')

    @@products_list.each do |product|
      product.size.pop
      file.write("#{product.name}: #{product.size}\n")
    end
    # file.write(new_products)
    # file.write(new_prices)
    file.close
  end

  def self.generate_list
    @@products_list = []
    file = File.open('catalogo.txt', 'r')
    data = file.readlines
    file.close
    data.each do |prod|
      ls = prod.delete("\n").split(', ')
      @@products_list << Product.new(*ls)
    end
  end

  def initialize(name, *size)
    @name = name
    @size = size.map(&:to_i)
  end
  #
  # def new_catalog()
  #   file = File.read('catalogo.txt', 'r')
  #
  #   file.close
  #   file = File.open('nuevo_catalogo','w')
  #   file.write(name)
  #
  #   file.close
  # end

end

Product.generate_list
Product.new_catalog
