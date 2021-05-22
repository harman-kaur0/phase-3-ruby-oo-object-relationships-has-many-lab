class Artist 

    @@all = []
    attr_accessor :name
    def initialize (name)
        @name = name
        save
    end

    def self.all
        @@ll
    end

    def save
        @@all << self
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(name)
        song = Song.new(name)
        song.artist = self
    end

    def self.song_count
        Song.all.count
    end
end