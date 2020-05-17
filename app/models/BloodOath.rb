class BloodOath
  attr_reader :cult, :follower

  @@all = []

  def initialize(cult, follower)
    @cult = cult
    @follower = follower
    @inititation_date ||= Time.new
    @@all << self
  end

  def self.all
    @@all
  end

  def self.first_oath
    @@all.first.follower
  end
end