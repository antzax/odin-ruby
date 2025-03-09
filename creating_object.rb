class Tree
  def initialize(puu)
    @puu = puu
  end

  def seisoo
    puts @puu.capitalize + " seisoo"
  end
end

mänty = Tree.new("mänty")
koivu = Tree.new("koivu")
haapa = Tree.new("haapa")


mänty.seisoo
koivu.seisoo
haapa.seisoo

class Animal
  def initialize
    puts "Animal is born"
  end
end

koira = Animal.new
