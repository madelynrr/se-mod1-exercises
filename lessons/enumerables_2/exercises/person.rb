# Part ONE
# Given the objects and array below, write the code that returns minimum and maximum values:
# By name (alphabetically)
# By age (youngest and oldest)
# By name length (shortest and longest)
# By number of children (least and most)

#Part TWO
# Given the object and array below, write the code that returns the sorted values:
# By name (alphabetically)
# By age (youngest to oldest)
# By name length (shortest to longest)
# By number of children (least to most)

class Person
  attr_reader :name,
              :age,
              :children

  def initialize(name, age, kids)
    @name = name
    @age  = age
    @children = kids
  end
end

kardashians = []
kardashians << Person.new("Kourtney", 42, ["Mason", "Penelope", "Reign"])
kardashians << Person.new("Kim", 41, ["North", "Saint", "Chicago", "Psalm"])
kardashians << Person.new("Kris", 65, ["Kourtney", "Kim", "Khloe", "Rob", "Kendall", "Kylie"])
kardashians << Person.new("Khloe", 37, ["True"])

min_name = kardashians.min_by { |person| person.name }
max_name = kardashians.max_by { |person| person.name }

min_age = kardashians.min_by { |person| person.age }
max_age = kardashians.max_by { |person| person.age }

min_name_length = kardashians.min_by { |person| person.name.length }
max_name_length = kardashians.max_by { |person| person.name.length }

min_kids = kardashians.min_by { |person| person.children.length }
max_kids = kardashians.max_by { |person| person.children.length }


by_name = kardashians.sort_by { |person| person.name }
by_age = kardashians.sort_by { |person| person.age }
by_name_length = kardashians.sort_by { |person| person.name.length }
by_kids = kardashians.sort_by { |person| person.children.length }
