class Caixa
  NOTAS = [100, 50, 20, 10].freeze

  def sacar(valor)
    notas_entregues = {}
    notas_copy = NOTAS.dup

    notas_copy.each do |nota|
      quantidade = valor / nota
      if quantidade > 0
        notas_entregues[nota] = quantidade
        valor %= nota
      end
    end

    if valor == 0
      puts "Notas entregues: "
      notas_entregues.each do |nota, quantidade|
        puts "#{quantidade} nota(s) de R$ #{nota},00"
      end
    else
      puts "Não é possível sacar o valor solicitado com as notas disponíveis."
    end
  end
end

puts "Digite o valor que deseja sacar:"
valor_saque = gets.chomp.to_i

caixa = Caixa.new
caixa.sacar(valor_saque)
