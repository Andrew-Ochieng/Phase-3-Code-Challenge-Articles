class Author
  attr_reader :name


  def initialize(name)
    @name = name
    @articles = []
    @magazines = []
  end

  def articles
    @articles
  end

  def magazines
    @magazines.uniq
  end

  def add_article(magazine, title)
    articles << Article.new(self, magazine, title)
    magazines << magazine
  end

  def topic_areas
    # magazines.map {|magazine| magazine.category}.uniq
    magazin = magazines.map do |magazine|
      magazine.category
    end
    magazin.uniq
  end



end
