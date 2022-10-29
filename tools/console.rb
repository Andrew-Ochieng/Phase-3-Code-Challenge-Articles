require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

# author
author1 = Author.new("Elon Musk")
author2 = Author.new("Martin Sanders")


#magazine
magazine1 = Magazine.new("New York Times", "Politics")
magazine2 = Magazine.new("Bloomberg", "Kids")
magazine3 = Magazine.new("The WREAT", "Sustainable Development") 


#articles
article1 = Article.new(author1, magazine1, "Corporations Lobbying")
article2 = Article.new(author2, magazine2, "Sustainable Development")



### DO NOT REMOVE THIS
binding.pry

0
