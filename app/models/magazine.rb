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

  def contributors
    articles = Article.all.filter do |article| 
      self == article.magazine
    end

    articles.map do |article|
      article.author
    end

  end

end



