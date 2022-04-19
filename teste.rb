
puts "Bem vindo a nossa loja!" "\n\n"
puts "Temos 2 tipos de promoções:" "\n\n" "1- Salada de Frutas: Caso compre ao menos 1 tipo de cada fruta um desconto de 10% é aplicado ao valor final"
puts "2- Adoro Maçãs: Ao comprar 3 ou mais maçãs um desconto de 5% é aplicado ao valor final das maçãs" "\n\n"
puts "Digite 1 se deseja comprar algo ou 2 caso queira sair:"

x = gets.chomp()
m = 0
l = 0
b = 0
puts "\n"

if x == '1'
  while x == '1'
  puts "Por favor escolha um de nossos produtos:"
  puts "Digite 1 para Maçãs R$ 5,00" "|" " Digite 2 para Laranjas R$ 4,50" "|" " Digite 3 para Bananas R$ 6,00 \n \n"
  escolha = gets.chomp()
  puts "\n"
    case escolha
    when '1'
      puts "Por favor informe a quantidade de Maçãs que deseja comprar:"
      quantidade = gets.chomp.to_i()
      valorM = 5.00 * quantidade
      puts "Se desejar compra mais algum produto digite 1, caso queira finalizar a compra digite 2"
      x=gets.chomp()
      puts"\n"
        if quantidade > 0
          m+=1
        end
        if quantidade >= 3
          valorM = valorM - (valorM * 0.05)
        end

    when '2'
      puts "Por favor informe a quantidade de Laranjas que deseja comprar:"
      quantidade = gets.chomp.to_i()
      valorL = 4.50 * quantidade
      puts "Se desejar compra mais algum produto digite 1, caso queira finalizar a compra digite 2"
      x=gets.chomp()
      puts"\n"
        if quantidade > 0
          l+=1
        end

    when '3'
      puts "Por favor informe a quantidade de Bananas que deseja comprar:"
      quantidade = gets.chomp.to_i()
      valorB= 6.00 * quantidade
      puts "Se desejar compra mais algum produto digite 1, caso queira finalizar a compra digite 2"
      x=gets.chomp()
      puts"\n"
        if quantidade > 0
        b+=1
        end

    else
      puts "Opção Inexistente"
    end

end

final = valorB.to_f + valorL.to_f + valorM.to_f

if m > 0 && l > 0 && b > 0
  print "O valor total dos produtos comprados é:R$ "
  final = final - final * 0.10
  puts final
  puts "Obrigado por nos visitar, volte sempre!"

else
  print "O valor total dos produtos comprados é:R$ "
  puts final
  puts "Obrigado por nos visitar, volte sempre!"
end


else
  puts "Obrigado por nos visitar, volte sempre!"
end



#Fazer um array pros valores das frutas
