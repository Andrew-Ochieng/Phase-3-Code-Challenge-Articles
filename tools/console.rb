require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

# author
author1 = Author.new("Elon Musk")
author2 = Author.new("Martin Sanders")
author1.name
author2.name



#magazine
magazine1 = Magazine.new("New York Times", "Politics")
magazine2 = Magazine.new("Bloomberg", "Kids")
magazine3 = Magazine.new("The WREAT", "Sustainable Development") 
magazine4 = Magazine.new("New York Times", "Economic")
Magazine.all



#articles
article1 = Article.new(author1, magazine1, "Corporations Lobbying")
article2 = Article.new(author2, magazine2, "Sustainable Development")
article3 = Article.new(author2, magazine3, "Climate change")
article4 = Article.new(author2, magazine4, "Economic Regression")

Article.all

author1.magazines



### DO NOT REMOVE THIS
binding.pry

0
