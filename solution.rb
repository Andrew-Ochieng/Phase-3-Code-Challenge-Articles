# Please copy/paste all three classes into this file to submit your solution!
# article
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

    def author
        @author.name
    end

    def magazine
        @magazine.name
    end
    
end



# author
class Author
    attr_reader :name
  
  
    def initialize(name)
      @name = name
      @magazines = []
    end
  
    # returns article(s) belonging to a single author
    def articles
      Article.all.select do |article| 
        article.author == self
      end
    end
  
    # returns unique array of Magazine instances the author has written
    def magazines
      uniq_magazine = Article.all.select do |article|
        article.author == self
      end
      uniq_magazine.map.uniq do |article|
        article.magazine
      end
    end
  
  
    def add_article(magazine, title)
      Article.new(self, magazine, title)
      magazines << magazine
    end
  
    def topic_areas
      arr = Article.all.select do |article|
        article.author == self
      end
      arr.map do |article|
        article.magazine.category
      end.uniq
    end
  
  end



# magazine
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
  
  
    # Returns an array of Author instances who have written for this magazine
    def contributors
      arr = Article.all.select do |article|
        article.magazine == self
      end
      arr.map do |article|
        article.author
      end
    end
  
    def self.find_by_name(name)
      @@all.find do |magazine|
        magazine.name == name
      end
    end
  
    def article_titles
      arr = Article.all.select do |magazine|
        magazine.magazine == self
      end
      arr.map do |article|
        article.title
      end
    end
  
    def contributing_authors
      Article.all.select do |magazine|
        magazine.magazine == self
      end.map do |author|
        author.author
      end.uniq.map do |article|
        article.articles.count > 2
      end
    end
  
  end






