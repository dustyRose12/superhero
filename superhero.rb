class Superhero

  attr_reader :name, :hitpoints, :attack, :alive, :has_special_tool
  attr_writer :hitpoints, :alive

  def initialize(input)
    @name = input[:name]
    @hitpoints = input[:hitpoints]
    @attack = input[:attack]
    @alive = true
    @has_special_tool = false
  end

  def hit(other_superhero)
    other_superhero.hitpoints -= self.attack
  end

  def grab_tool
    @has_special_tool = true
    @attack *= 3
  end

  def alive
    if @hitpoints < 1
      @alive = false
    else
      @alive = true
    end
  end

end

