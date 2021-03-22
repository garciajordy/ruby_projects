class Viking
  @@allvikings = {}
  def initialize(name)
    @name = name
    @level = 1
    @health = 120
    @maxhealth = @health
    @@allvikings[@name] = @level
    @experience = 0
    @experiencenext = 100
    @strength = rand(5) + 10
    puts "your name is #{name} you start at level #{@level} with #{@health} health points and #{@strength} strength"
  end

  def attributes
    puts "#{@name} has #{@health} HP."
    puts "#{@name} has #{@strength} strength."
    puts "#{@name} is level #{@level} ."
    puts "#{@name} has #{@experience}/#{@experiencenext} XP."
  end

  def new_health(strength)
    @health -= strength
    puts "#{@name} got hit with #{strength} and got now #{@health}/#{@maxhealth}HP left"
  end

  def attack(enemy)
    enemy.new_health(@strength)
    @experience += (@level * 10)
    if @experience > @experiencenext
      @level += 1
      if (@level % 5) == 0
        @strength += (@strength / 2)
        @experiencenext += (@experience * 3)
        @maxhealth += (@maxhealth / 2)
        @health = @maxhealth
      else
        @strength += (@strength / 3)
        @experiencenext += (@experience * 2)
        @maxhealth += (@maxhealth / 3)
        @health = @maxhealth
      end
      puts "YAY #{@name} reached level #{@level} you've got now #{@strength} str and #{@health}/#{@maxhealth} HP, you need #{@experience}/#{@experiencenext} XP to reach the next level!"
    end
  end

  def sleep
    if @health < (@maxhealth / 2)
      @health += (@maxhealth / 2)

      puts "you got #{@health}/#{@maxhealth}"
    elsif @health < ((@maxhealth / 10) * 9)
      @health += (@maxhealth / 10)
      puts "you got #{@health}/#{@maxhealth}"
    elsif @health < @maxhealth
      @health += 1
      puts "you got #{@health}/#{@maxhealth}"
    end
  end

  def Viking.call_vikings
    puts @@allvikings
  end
end
