require 'pry'
class Magazine
  attr_accessor :name, :category
  
  @@all = []

  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end
  
  def self.all
    @@all
  end


end

magazine1 = Magazine.new("New York Times", "Politics")
magazine2 = Magazine.new("Bloomberg", "Kids")
magazine3 = Magazine.new("The WREAT", "Sustainable Development") 


binding.pry