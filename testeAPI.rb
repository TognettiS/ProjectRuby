require 'rest-client'
require 'json'

url ='https://economia.awesomeapi.com.br/last/USD-BRL,EUR-BRL,BTC-BRL'
resp = RestClient.get "#{url}"
dolar = JSON.parse(resp)['USDBRL']['bid']
euro = JSON.parse(resp)['EURBRL']['bid']
i = 1
puts "Bem-vindo ao conversor de R$ em tempo real! \n\n"

while i == 1
  puts "Digite o valor que deseja converter: \n\n"
  valor = gets.chomp.to_f()

  puts "\nDigite '1' para converter $ em R$ | Digite '2' para converter R$ em $ | Digite '3' para converter € em R$ | Digite '4' para converter R$ em € \n\n"
  x = gets.chomp.to_i()

    case x
    when 1
      contaDR = dolar.to_f * valor
      puts "\nO valor é R$ #{contaDR}\n"
    when 2
      contaRD = valor / dolar.to_f
      puts "\nO valor é $ #{contaRD}\n"
    when 3
      contaER = valor * euro.to_f
      puts "\nO valor é R$ #{contaER}\n"
    when 4
      contaRE = valor / euro.to_f
      puts "\nO valor é € #{contaRE}\n"
    else
      puts "\nOpção Inexistente"
    end

    puts "Deseja Continuar? Utilize 's' para sim e 'n' para não"
    y = gets.chomp
    if y == "s"

    elsif y == "n"
        i = 0
       puts "Obrigado por utilizar nosso programa!"

    else
      puts "Opção inexistente"
    end

end
