$quantidademaca = 0
$quantidadebanana = 0
$quantidadelaranja = 0

def _EscolhaProdutos
  puts "Por favor escolha um de nossos produtos:"
  puts "Digite 1 para Maçãs R$ 5,00" "|" " Digite 2 para Laranjas R$ 4,50" "|" " Digite 3 para Bananas R$ 6,00 \n \n"

  escolha = gets.chomp()
  puts "\n"
  _RecebeQuantidade
    case escolha
    when '1'
      _CalculaValorMacas

    when '2'
      _CalculaValorLaranja

    when '3'
      _CalculaValorBanana
    end
end

def _RecebeQuantidade
  puts "Por favor informe a quantidade que deseja comprar:"
  $quantidade = gets.chomp.to_i()
end

def _CalculaValorMacas
  $valormaca = 5.00 * $quantidade
  $quantidademaca = $quantidademaca + 1

  if $quantidade >= 3
    $valormaca = $valormaca - ($valormaca * 0.05)
  end
  _ComprarMais()
end

def _CalculaValorLaranja
  $valorlaranja = 4.50 * $quantidade

  if $quantidade > 0
    $quantidadelaranja = $quantidadelaranja + 1
  end
  _ComprarMais()
end

def _CalculaValorBanana
  $valorbanana= 6.00 * $quantidade

  if $quantidade > 0
    $quantidadebanana = $quantidadebanana + 1
  end
  _ComprarMais
end

def _CalculaValorFinal
  valorfinal = $valorbanana.to_f + $valorlaranja.to_f + $valormaca.to_f

  if $quantidademaca>0 && $quantidadelaranja>0 && $quantidadebanana>0
    valorfinal = valorfinal - valorfinal * 0.10
  end

print "\nO valor total dos produtos comprados é: R$ #{valorfinal.round(2)}"
puts "\nObrigado por nos visitar, volte sempre!"
end

def _ComprarMais
  puts "\nSe desejar compra mais algum produto digite 1, caso queira finalizar a compra digite 2"
  maisprodutos = gets.chomp.to_i()
  if maisprodutos == 1
    _EscolhaProdutos
  else
    _CalculaValorFinal
  end
end

puts "Bem vindo a nossa loja!" "\n\n"
puts "Temos 2 tipos de promoções:" "\n\n" "1- Salada de Frutas: Caso compre ao menos 1 tipo de cada fruta um desconto de 10% é aplicado ao valor final"
puts "2- Adoro Maçãs: Ao comprar 3 ou mais maçãs um desconto de 5% é aplicado ao valor final das maçãs" "\n\n"

_EscolhaProdutos
