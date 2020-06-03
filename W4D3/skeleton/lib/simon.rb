class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []

  end

  def play
    until @game_over == true #until the game is over, keep taking turns
        self.take_turn
    end
    self.game_over_message  #once the game is over, show the game over message and reset the game
    self.reset_game    
  end

  def take_turn
    self.show_sequence #show the sequence
    self.require_sequence #require the sequence from user
    if @game_over == false #if the game isn't over show round success and increment sequence length
      self.round_success_message
      @sequence_length += 1
    end  

  end

  def show_sequence
    self.add_random_color #add random color to sequence
  end

  def require_sequence

  end

  def add_random_color
    @seq << COLORS.sample #add random color to sequence array
  end

  def round_success_message

  end

  def game_over_message

  end

  def reset_game
    @sequence_length = 1 #reset all initialize values once game is complete
    @game_over = false
    @seq = []
  end
end
