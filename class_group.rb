puts "\nHow many members would you like in each group?"
groups_of = gets.chomp.to_i

class_members = ["Alan Appelstein", "Alice Mottola", "Alina Guzman",
                 "andrew silbersmith", "Anuj Jhunjhunwala", "Ben Israeli",
                 "Beryl Schragger", "Chris Clearfield", "Christine Coulter",
                 "Christopher Huyett", "Christopher Wright", "Corbin Sykes",
                 "Eleyna Whittingham", "Eric Gong", "Jamal Powell",
                 "Jason Darcy", "Kevon Cheung", "Mike Mayer",
                 "Mike Vanger", "Nick Lombardi", "Teddy Cleveland",
                 "Thomas Yu", "Tim Blonski", "Tom Brennan",
                 "Tricia Dougals", "Zachariah Reitano"]

num_groups = class_members.length / groups_of

class_members = class_members.shuffle!

for num in (1..num_groups)
  group = class_members.pop(groups_of)
  puts "\nGroup " + num.to_s + ":"
  group.each {|name| puts name.to_s}
  if num == num_groups
    class_members.each {|name| puts name.to_s}
  end
end

