# Pseudocode
=begin
  1. Crear la clase CreditCard
  1.a. Validar que el número sea the 16 dígitos

  2. Crear el método para doblar un numero si y otro no, empezando desde el penultimo, hasta llegar al primer digito.

  3. Crear el método que sume todos los digitos que no modificaste con los que doblaste. (Si hay un numero de 2 digitos tienes que partirlo. 10 se compierte en 1 + 0)

  4. Crear el método que valide la tarjeta: si el total de la suma es un multiplo de 10, el numero de la tarjeta de credito es valido!
=end

# 1. Solucion Inicial

class CreditCard

attr_accessor :credit_number

  def initialize(credit_number)
    if credit_number.to_s.length != 16
      raise ArgumentError.new('Número inválido. Necesita 16 dígitos')
    else
      @credit_number = credit_number
    end
  end

  def step_1
    @credit_card_array = credit_number.to_s.split('')
  end

  def step_2
    @credit_card_sum
  end

  def validation
    credit_card_sum % 10 == 0 ? true : false
  end

end

p my_creditcard = CreditCard.new(1234567898765432)
p my_creditcard.step_1

# def digits_of(number):
#     return [int(i) for i in str(number)]
#
# def luhn_checksum(card_number):
#     digits = digits_of(card_number)
#     odd_digits = digits[-1::-2]
#     even_digits = digits[-2::-2]
#     total = sum(odd_digits)
#     for digit in even_digits:
#         total += sum(digits_of(2 * digit))
#     return total % 10
#
# def is_luhn_valid(card_number):
#     return luhn_checksum(card_number) == 0


# 2. Solucion con Refactor





###### DRIVER CODE #########
