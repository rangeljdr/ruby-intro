require_relative 'racer_utils'

class View

  def initialize(board1,board2)
    @board1 = board1
    @board2 = board2
  end

  def print_board(board1,board2)
    puts board1.join()
    puts board2.join()
  end
# El juego termino

  def print_winner
    puts "El jugador '#{game.winner}' ha ganado!"
  end
end


class Controller(view,game)
  view = View.new(@board1,@board2)
  #rubyRacer = RubyRacer.new
  players = ["A", "Z"]
  game = RubyRacer.new(players)

  # limpia la pantalla
  clear_screen!

def game_finished?
  until game.finished?
    players.each do |player|
      # Mueve el cursor a la esquina derecha
      move_to_home!
end

      # imprimimos el tablero en su estado inicial
      game.print_board
      game.advance_player!(player)

      # tenemos que dormir un poquito, de lo contrario no vamos a ver nada del juego.
      # mira http://www.ruby-doc.org/core-1.9.3/Kernel.html#method-i-sleep
      sleep(0.5)
  end
end






class RubyRacer
  attr_reader :players, :length

  def initialize(players, length = 30)
    @players = players
    @length = length
    @board1 = create_track(players[0])
    @board2 = create_track(players[1])
    @die = Die.new
  end

  def create_track(player)
    track = Array.new(@length) {"|"}
    track[0] = player
    track
  end

  # Devuelve true si uno de los jugadores llego a la meta, falso de lo contrario
  def finished?
    if @board1.index(@players[0]) >= @length
      true
    elsif
       @board2.index(@players[1]) >= @length
      true
    end
  end

  # Retorna el ganador si hay uno, nil de lo contrario
  def winner
    if @board1.index(@players[0]) == @board2.index(@players[1])
    @players[0] + " , " + @players[1]
  elsif @board1.index(@players[0]) >= @length
      @players[0]
    elsif @board2.index(@players[1]) >= @length
      @players[1]
    else
      nil
    end
  end

  # Rueda el dado y avanza la posicion del jugador respectivo
  def advance_player!(player)
    @board1 = @board1.insert(@die.roll + @board1.index(@players[0]), @board1.delete_at(@board1.index(@players[0])))
    @board2 = @board2.insert(@die.roll + @board2.index(@players[1]), @board2.delete_at(@board2.index(@players[1])))
  end

  # Imprime el tablero actual
  # El tablero siempre debe tener las mismas dimensiones
  # Debes imprimir encima del tablero anterior
  def print_board
    puts @board1.join()
    puts @arr2.join()
  end
end
