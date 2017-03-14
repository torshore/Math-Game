require_relative 'player'   #from stackoverflow (require_relative)
require_relative 'questions'

module MathGame
  class Game


    P1 = Player.new('Player 1')
    P2 = Player.new('Player 2')

    puts 'Come Play Two-O--Player Math Game!'
    puts 'Are you Ready?'

    def self.turn(current_player)  #self from stack overflow
      puts "#{current_player.name}: What is #{Questions.num1} + #{Questions.num2}?"
        answer = gets.chomp

      if Questions.validation(answer)
        puts 'You\'re right'
      else
        puts 'Sorry, that\'s wrong.'
        current_player.wrong_answer
      end

      puts "#{P1.name}: #{P1.lives}/3 and #{P2.name}: #{P2.lives}/3"
    end

    loop do

      turn(P1)
      # break
      if P1.end_game
        puts "Player 2 wins with a score of #{P2.lives}/3"
        break
      end

      turn(P2)
      # break
      if P2.end_game
        puts "Player 1 wins with a score of #{P2.lives}/3"
        break
      end

      puts 'Change Player!'
    end

  end
end