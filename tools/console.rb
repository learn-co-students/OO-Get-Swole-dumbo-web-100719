# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

gym1 = Gym.new("LA_fitness")
gym2 = Gym.new("NYSC")
gym3 = Gym.new("Blink")
gym4 = Gym.new("Total_fitness")

lifter1 = Lifter.new("Adeja", 450, gym2)
lifter2 = Lifter.new("Chris", 650, gym1)
lifter3 = Lifter.new("James", 250, gym4)
lifter4 = Lifter.new("Bob", 300, gym3)

member1 = Membership.new(20, gym4, lifter1)
member2 = Membership.new(30, gym2, lifter2)
member3 = Membership.new(25, gym1, lifter4)
member4 = Membership.new(15, gym3, lifter3)


binding.pry

puts "Gains!"
