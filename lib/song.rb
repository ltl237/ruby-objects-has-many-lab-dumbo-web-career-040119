require 'pry'
require_relative 'author'
require_relative 'artist'

class Song
        attr_accessor :name, :artist
        @@all = []
        def initialize(name)
                @name = name
                @@all << self
        end

        def self.all
                @@all
        end

        def artist_name
                if artist
                        artist.name
                else
                        return nil
                end
        end
end
