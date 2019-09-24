class Follower
  attr_reader :name, :age, :life_motto, :cults

  @@all = []

  def initialize(name, age, life_motto)
    @name = name
    @age = age
    @life_motto = life_motto
    @@all << self
  end

  def cults
    BloodOath.all.find_all { |bloodoath| bloodoath.follower == self }
  end

  def join_cult(cult)
    BloodOath.new(cult, self)
  end

  def my_cults_slogans
    BloodOath.all.each do |oath|
      if oath.follower == self
        p oath.cult.slogan
      end
    end
  end

  def self.all
    @@all
  end

  def self.most_active
    @@all.max_by { |follower| follower.cults.length}
  end
  
  def self.of_a_certain_age(age)
    @@all.select { |follower| follower.age >= age }
    # This was an experimental solution that works
    #BloodOath.all.find_all { |oath| oath.follower.age >= age }
  end

end