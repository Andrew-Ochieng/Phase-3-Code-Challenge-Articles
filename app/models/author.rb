require 'pry'
class Author
  attr_reader :name


  def initialize(name)
    @name = name
  
  end


end

my_name = Author.new("Elon Musk")

binding.pry