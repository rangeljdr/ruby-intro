# Pseudocode
  # Crear una clase die
  # Crear dos metodos con un argumento que responsde al número de lados
  # método 1: lados del lados
  # método 2: lanzar el lado y retorna un número al azar
  # Validamos que el argumento sea => 1 sino lanzamos un argumento de error

# 1. Solucion Inicial

class Die

attr_reader :sides

  def initialize(sides)
    if sides < 1
      raise ArgumentError, "El número de dados debe ser mayor a 1"
    end
    @sides = sides
  end

  def roll
    rand(1..@sides)
  end

end

# dado_1 = Die.new(0)
# p dado_1.sides
# p dado_1.roll




# 2. Solucion con Refactor





###### DRIVER CODE #########
