class Song

    attr_accessor :artist

    @@all = []
    def initialize(name)
        @name = name
        save
    end

    def self.all
        @@all
    end

    def save
        @@all << self
    end

    def name
        @name
    end

    def artist
        @artist
    end

    def artist_name
        if self.artist
            self.artist.name
        else
            nil
        end
    end

end