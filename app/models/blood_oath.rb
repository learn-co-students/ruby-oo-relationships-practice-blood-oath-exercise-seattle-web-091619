class BloodOath

    attr_accessor :initiation_date, :person, :group
    @@all = []
    def initialize(person, group)
        #@initiation_date = initiation_date
        @person = person
        @group = group
        @@all << self
    end

    def self.all
        @@all
    end
end