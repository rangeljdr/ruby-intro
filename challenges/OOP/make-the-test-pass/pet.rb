# Este es un ejemplo de como puedes guiar tu diseño usando pruebas.
# Al correr este codigo e ir solucionando las pruebas que fallan una por una deberias ser capaz de terminar el reto facilmente.

########################################################
# design the classes (partially complete)
########################################################
# Q: Que clases, metodos y attributos faltan?
# - No cambies el codigo existente, solo añadele cosas.

module Reality
  @year = 0

  def passage_of_time
    p "time passes ..."
    # que mas deberias pasar en este metodo?
    @year += 1
  end
end

class Pet
  include Reality

  attr_reader :walked

  def initialize
    if @walked = walked
  end

  def walked?
    @walked == "Happy dog" ? true : false
  end
end

class Dog
  def initialize(name)
    @name = name
    begin
      raise ArgumenError.new('Wron name input') if name.is_a?(Fixnum)
      @name = name
    rescue
      @name = 'Default name'
    end
  end
  def speak!
  end
end

class Person
  attr_accessor :pets

  def initialize
    @pets = []

  end

end


class Game
  end


g = Game.new(50)
