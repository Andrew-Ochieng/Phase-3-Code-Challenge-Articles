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

binding.pr

