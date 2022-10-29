require 'pry'
class Article
    attr_reader :title, :magazine, :author

    @@all = []

    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end
    

end

article1 = Article.new("Drew", "New York Times", "Corporations Lobbying")
article2 = Article.new("Jenny", "Bloomberg", "Sustainable Development")


binding.pry