puts "How many members would you like in each group?"
groups_of = gets.chomp.to_i

class_members = ["Alan Appelstein", "Alice Mottola", "Alina Guzman", "andrew silbersmith", "Anuj Jhunjhunwala", "Ben Israeli", "Beryl Schragger", "Chris Clearfield", "Christine Coulter", "Christopher Huyett", "Christopher Wright", "Corbin Sykes", "Eleyna Whittingham", "Eric Gong", "Jamal Powell", "Jason Darcy", "Kevon Cheung", "Mike Mayer", "Mike Vanger", "Nick Lombardi", "Teddy Cleveland", "Thomas Yu", "Tim Blonski", "Tom Brennan", "Tricia Dougals", "Zachariah Reitano"]
groups = []

groups.push class_members.sample(groups_of)

while class_members.length >= groups_of
  randoms = class_members.sample(groups_of)
  randoms.each {|name| class_members.delete_at(class_members.index(name))}
  groups.push randoms
end

unless class_members.empty?
  groups[-1].push class_members
end

puts""
groups.each {|group| puts "Group " + ((groups.index(group) +1)).to_s + ": " +  "\n" + group.flatten.to_s + "\n"}
