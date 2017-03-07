require_relative 'racer_utils'

class RubyRacer
  attr_reader :players, :length

  def initialize(players, length = 30)
    @players = players
    @length = length
    @arr1 = create_track(players[0])
    @arr2 = create_track(players[1])
    @die = Die.new
  end

  def create_track(player)
    track = Array.new(@length) {"|"}
    track[0] = player
    track
  end

  # Devuelve true si uno de los jugadores llego a la meta, falso de lo contrario
  def finished?
    if @arr1.index(@players[0]) >= @length
      true
    elsif
       @arr2.index(@players[1]) >= @length
      true
    end
  end

  # Retorna el ganador si hay uno, nil de lo contrario
  def winner
    if @arr1.index(@players[0]) == @arr2.index(@players[1])
    @players[0] + " , " + @players[1]
    elsif @arr1.index(@players[0]) >= @length
      @players[0]
    elsif @arr2.index(@players[1]) >= @length
      @players[1]
    else
      nil
    end
  end

  # Rueda el dado y avanza la posicion del jugador respectivo
  def advance_player!(player)
    @arr1 = @arr1.insert(@die.roll + @arr1.index(@players[0]), @arr1.delete_at(@arr1.index(@players[0])))
    @arr2 = @arr2.insert(@die.roll + @arr2.index(@players[1]), @arr2.delete_at(@arr2.index(@players[1])))
  end

  # Imprime el tablero actual
  # El tablero siempre debe tener las mismas dimensiones
  # Debes imprimir encima del tablero anterior
  def print_board
    puts @arr1.join()
    puts @arr2.join()
  end
end

#=========== driver code ===========

players = ["A", "Z"]
game = RubyRacer.new(players)

# limpia la pantalla
clear_screen!

until game.finished?
  players.each do |player|
    # Mueve el cursor a la esquina derecha
    move_to_home!

    # imprimimos el tablero en su estado inicial
    game.print_board
    game.advance_player!(player)

    # tenemos que dormir un poquito, de lo contrario no vamos a ver nada del juego.
    # mira http://www.ruby-doc.org/core-1.9.3/Kernel.html#method-i-sleep
    sleep(0.5)
  end
end

# El juego termino
game.print_board

puts "El jugador '#{game.winner}' ha ganado!"#
