class Article
    attr_reader :title
    attr_accessor :magazine, :author

    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = ""
    end

    


end
