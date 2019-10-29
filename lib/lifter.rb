class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total, gym)
    @name = name
    @lift_total = lift_total
    @gym = gym
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select do |membership|
      membership.lifter == self
    end
  end

  def gyms
    self.memberships.map do |membership|
      membership.gym
    end
  end

  def average
    @@all.sum {|lifter| lifter.lift_total.to_f}/@@all.size.to_f
  end

  def total_memberships_cost
    total=0
    ar=Membership.all.select do |membership|
       membership.lifter == self
    end
    ar.each do |membership|
      total += membership.cost
      end
      total
  end

  def sign_up(gym, cost)
    Membership.new(cost, gym, self)
  end
    



end
