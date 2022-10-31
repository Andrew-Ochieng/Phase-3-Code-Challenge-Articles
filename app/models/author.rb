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
