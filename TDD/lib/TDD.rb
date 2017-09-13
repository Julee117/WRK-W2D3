class Array

  def uniq
    results_arr = []

    self.each do |el|
      results_arr << el unless results_arr.include?(el)
    end

    results_arr
  end

  def two_sum
    pairs = []
    (0...self.length).each do |x|
      (x+1...self.length).each do |y|
        if self[x] + self[y] == 0
          pairs << [x, y]
        end
      end
    end
    pairs
  end

  def my_transpose
    matrix = []
    (0...self[0].length).each do |x|
      matrix[x] = []
      (0...self.length).each do |y|
        matrix[x] << self[y][x]
      end
    end
    matrix
  end

  def stockpicker
    best_trade = []
    gain_loss = 0

    self.each_with_index do |buy, i|
      self.each_index do |j|
        if (self[j]- buy) > gain_loss
          gain_loss = self[j] - buy
          best_trade = [i,j]
        end
      end
    end
    best_trade
  end
end

class TowersOfHanoi
  attr_accessor :model_set

  def initialize
    @model_set = [[3, 2, 1], [], []]
  end

  def make_turn
    until won?
      puts "Pick a pile"
      start = gets.chomp.to_i

      start_move(start)

      puts "Where would you like to move your disc"
      next_pile = gets.chomp to_i

      move(start, next_pile)
    end
  end

  # def make_move(start, next_pile)
  #   if @model_set[start].empty?
  #     raise "Empty pile. Pick another"
  #   elsif !@model_set[start].empty? && (@model_set[next_pile].empty? || @model_set[next_pile].last > @model_set[start].last)
  #     @model_set[next_pile] << @model_set[start].pop
  #   end
  #   @model_set
  # end

  def won?
    if @model_set[0].empty? && (@model_set[1].empty? || @model_set[2].empty?)
      raise "Congratulations! You won!"
    end
  end

  def start_move(start)
    if @model_set[start].empty?
      raise "Empty pile. Pick another"
    else
      @model_set[start].pop
    end
  end

  def move(start, next_pile)
    if @model_set[next_pile].empty? || @model_set[next_pile].last > start
      @model_set[next_pile] << start
    else
      raise "Invalid pile. Pick another"
    end
    @model_set
  end

end
