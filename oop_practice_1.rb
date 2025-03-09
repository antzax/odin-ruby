class Dog
  def initialize(name)
    @name = name
  end

  def bark
    "Ruff ruff"
  end
end

musti = Dog.new("Musti")
puts musti.bark

class Insect
  def initialize(age_in_days)
    @age_in_days = age_in_days
  end

  def age_in_years
    (@age_in_days / 365).to_f
  end
end

muurahainen = Insect.new(3123)
years = muurahainen.age_in_years
puts years