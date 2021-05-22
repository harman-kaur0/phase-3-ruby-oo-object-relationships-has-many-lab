class Post
    attr_accessor :author
    
    @@all = []
    def initialize(title)
        @title = title
        save
    end

    def self.all
        @@all
    end

    def save
        @@all << self
    end

    def title
        @title
    end

    def author
        @author
    end

    def author_name
        if self.author
            self.author.name
        else
            nil
        end
    end
end