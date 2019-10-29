class Gym
  attr_reader :name
  
  @@all = []


  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all 
    @@all 
  end

  def meberships
    Membership.all.select do |membership|
      membership.gym == self
    end
  end

  def lifters
    self.memberships.map do |membership|
      membership.lifter
    end
  end

  def lifter_names
    self.lifters.map do |lifter|
      lifter.name
    end
  end

  def liter_total
    total = 0
    self.lifters.each do |lifter|
      total += lifter.total_lift
      total
    end
  end


  



end
