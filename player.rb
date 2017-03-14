module MathGame
  class Player

    attr_accessor :name, :life

    def initialize(name)
      @name = name
      @lives = 3
    end

    def wrong_answer
      @lives -= 1
    end

    def end_game
      @lives == 0
    end

end