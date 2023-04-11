class Calculadora
  def initialize(*valores)
    @valores = valores
  end

  def soma
    verificar_valores
    @valores.reduce(:+)
  end

  def subtracao
    verificar_valores
    @valores.reduce(:-)
  end

  def multiplicacao
    verificar_valores
    @valores[0] * @valores[1]
  end

  def divisao
    verificar_valores
    @valores[0] / @valores[1]
  end

  private

  def verificar_valores
    if @valores.size < 2
      raise "É necessário passar pelo menos dois valores como parâmetro."
    end
  end
end

puts "Digite os valores separados por espaço:"
valores_input = gets.chomp.split.map(&:to_i)

calculadora = Calculadora.new(*valores_input)
puts "Resultado da soma: #{calculadora.soma}"
puts "Resultado da subtração: #{calculadora.subtracao}"
puts "Resultado da multiplicação: #{calculadora.multiplicacao}"
puts "Resultado da divisão: #{calculadora.divisao}"
