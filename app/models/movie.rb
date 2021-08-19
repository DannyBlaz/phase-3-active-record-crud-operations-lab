class Movie < ActiveRecord::Base

    def self.find_all_movies_by_year(year)
        Movie.where(year: year)
    end

    def self.create_with_title(title)
        self.create(title: title)
    end

    def self.first_movie
        self.all.first
    end

    def self.last_movie
        self.all.last
    end

    def self.movie_count
        self.all.count
    end

    def self.find_movie_with_id(id)
        self.find_by_id(id)
    end

    def self.find_movie_with_attributes(attributes)
        self.find_by(title: attributes[:title])
    end

    def self.find_movies_after_2002
        self.order("release_date DESC").limit(2)
    end

    def self.update_all_titles(updates)
        self.all.each do |film|
            p film.update(title: updates)
            p film.title
        end
    end

end