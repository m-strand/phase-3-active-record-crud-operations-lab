class Movie < ActiveRecord::Base
    def self.create_with_title(title)
        movie = Movie.create(title: title)
    end

    def self.first_movie
        Movie.first
    end

    def self.last_movie
        Movie.last
    end

    def self.movie_count
        Movie.count
    end

    def self.find_movie_with_id(id)
        Movie.find(id)
    end

    def self.find_movie_with_attributes
        
    end

    def self.find_movies_after_2002
        Movie.where('release_date > 2002')
    end

    def update_with_attributes(title, release_date, director, lead, in_theaters)
        Movie.update_attributes(title: title, release_date: release_date, director: director, lead: lead, in_theaters: in_theaters)
    end

    def self.update_all_titles(title)
        Movie.update_all(title: title)
    end

    def self.delete_by_id(id)
        Movie.destroy(id)
    end

    def self.delete_all_movies
        Movie.destroy_all
    end
end