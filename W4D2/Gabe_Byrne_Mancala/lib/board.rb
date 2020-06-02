class Board
  attr_accessor :cups
  require 'byebug'

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14, [])#set of 14 cups
    place_stones
  end

  def place_stones
        (0...@cups.length).each do |i|
          unless i == 6 || i == 13
              @cups[i] = [:stone, :stone, :stone, :stone]
          end     # helper method to #initialize every non-store cup with four stones each
        end
      return @cups   
  end

  def valid_move?(start_pos)
    raise 'Invalid starting cup' if start_pos > 13 || start_pos < 0
    raise 'Starting cup is empty' if cups[start_pos] == []
  end


  def make_move(start_pos, current_player_name)

      (1..cups[start_pos].length).each do |index|
        cups[start_pos] = []

        if (start_pos + (index % 13)) == 6
          @cups[6] << :stone if current_player_name == @name1
        elsif (start_pos + (index % 13)) == 13
          @cups[13] << :stone if current_player_name == @name2
        else
          @cups[start_pos + (index % 13)] << :stone
        end  
      end
    render
    next_turn(start_pos)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
