class TowersOfHanoi
  def initialize(name)
    @name = name
    @stack = [[3,2,1], [], []]
  end

  attr_accessor :stack

  def play
    until won?
      puts "where do you want to go separated by commas e.g., 1,2"
      output = gets.chomp
      from_stack = output.split(",")[0].to_i
      to_stack = output.split(",")[1].to_i
      move(from_stack, to_stack)

    end
  end

  def move(from_stack, to_stack)
    raise "Can't take from empty stack" if @stack[from_stack].empty?

    unless @stack[to_stack].empty?
      raise "You can't place larger discs on smaller ones!" if  @stack[from_stack].last > @stack[to_stack].last
    end

    @stack[to_stack] << (@stack[from_stack].pop)
  end

  def won?
    @stack[1] == [3,2,1] || @stack[2] == [3,2,1]
  end
end

if __FILE__ == $PROGRAM_NAME
  game = TowersOfHanoi.new("Luke")
  game.play
end
