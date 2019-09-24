class Cult
  attr_reader :name, :location, :founding_year, :slogan

  @@all = []

  def initialize(name, location, founding_year, slogan)
    @name = name
    @location = location
    @founding_year = founding_year
    @slogan = slogan
    @@all << self
  end

  def cult_population
    cult_bloodoath = BloodOath.all.select { |bloodoath| bloodoath.cult == self}
    cult_bloodoath.length
  end

  def recruit_follower(follower)
    BloodOath.new(self, follower)
  end

  def average_age
    numerator = 0
    BloodOath.all.each do |oath| 
      if oath.cult == self
        numerator += oath.follower.age
      end
    end
    (numerator/cult_population).to_f
  end

  def my_followers_mottos
    BloodOath.all.each do |oath|
      if oath.cult == self
        puts oath.follower.life_motto
      end
    end
  end

  def self.least_popular
    @@all.min_by { |cult| cult.cult_population }
  end

  def self.most_common_location
    all_the_locations = @@all.map {|cult| cult.location}
    all_the_locations.max_by { |i| all_the_locations.count(i)}
  end
  
  def self.all
    @@all
  end

  def self.find_by_name(string)
    @@all.find { |cult| cult.name == string }
  end

  def self.find_by_location(location)
    @@all.find_all { |cult| cult.location == location }
  end

  def self.find_by_founding_year(year)
    @@all.find_all { |cult| cult.founding_year == year }
  end
end