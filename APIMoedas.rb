require 'rest-client'
require 'json'

def _RecebeValor
  puts "Digite o valor que deseja converter: \n\n"
  $valorusuario = gets.chomp.to_f()
  _VerificaOpcao()
end

def _VerificaOpcao
    puts "\nDigite '1' para converter $ em R$ | Digite '2' para converter R$ em $ | Digite '3' para converter € em R$ | Digite '4' para converter R$ em € \n\n"
    $opcao = gets.chomp.to_i()
    _RecebeCotacoesDoSite()
end

def _RecebeCotacoesDoSite
  sitecotacoes = 'https://economia.awesomeapi.com.br/last/USD-BRL,EUR-BRL,BTC-BRL'
  respostasite = RestClient.get "#{sitecotacoes}"
  valordolar = JSON.parse(respostasite)['USDBRL']['bid']
  valoreuro = JSON.parse(respostasite)['EURBRL']['bid']
  _EfetuaConversoes(valordolar, valoreuro)
end

def _EfetuaConversoes(valordolar, valoreuro)
  case $opcao
  when 1
    dolarprareal = $valorusuario * valordolar.to_f
    puts "\nO valor é R$ #{dolarprareal.round(2)}\n"
  when 2
    realpradolar = $valorusuario / valordolar.to_f
    puts "\nO valor é $ #{realpradolar.round(2)}\n"
  when 3
    europrareal = $valorusuario * valoreuro.to_f
    puts "\nO valor é R$ #{europrareal.round(2)}\n"
  when 4
    realpraeuro = $valorusuario / valoreuro.to_f
    puts "\nO valor é € #{realpraeuro.round(2)}\n"
  end
  _FazerNovamente()
end

def _FazerNovamente
  loop do
    puts "Deseja fazer novamente? Utilize 's' para sim e 'n' para não"
       repetir = gets.chomp
       if repetir == 's' || repetir == 'S'
         _RecebeValor()
         break

       elsif repetir != 's' || repetir != 'S'
          puts "Obrigado por utilizar nosso programa!"
          break
        end
  end
end

puts "Bem-vindo ao conversor de R$ em tempo real! \n\n"
_RecebeValor()
