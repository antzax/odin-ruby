module Speak
  def speak(sound)
   puts sound
  end
end

class Human
  include Speak # mixin
end

class Animal
  include Speak # mixin
end

anton = Human.new
anton.speak("moi")

koira = Animal.new
koira.speak("hau")

#Ancestors
p Human.ancestors
