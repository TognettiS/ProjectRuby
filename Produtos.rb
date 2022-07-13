puts "\nBem vindo! Por favor informe a opção que deseja."

@lista = [
  {Nome: "Celular", Valor: "2000"},
  {Nome: "Televisão", Valor:"2500"}
]

def lista_produtos
  puts "\nSegue lista com todos os produtos:"
  puts "\n"
  @lista.each do |produto|
    puts "#{produto[:Nome]} R$ #{produto[:Valor]}"
  end
end

def add_produtos
  puts "\nNome do produto:"
  nome = gets.chomp
  puts "\nValor do produto:"
  valor = gets.chomp

  @lista << {Nome: nome, Valor: valor}
end

def proc_produtos
  puts "\nDigite o nome do produto que deseja:"
  nome = gets.chomp

  @lista.each do |produto|
    if produto[:Nome].downcase == (nome.downcase)
      puts "#{produto[:Nome]} R$ #{produto[:Valor]}"

    end
  end
end

def edit_produtos
  puts "\nQual o nome do produto que deseja editar?"
  nome = gets.chomp

  @lista.each do |produto|
    if produto[:Nome].downcase == (nome.downcase)
      puts "Digite o novo nome (caso queira manter o antigo apenas aperte ENTER):"
      nome_antigo = produto[:Nome]

      produto[:Nome] = gets.chomp
      produto[:Nome] = produto[:Nome].empty? ? nome_antigo : produto[:Nome]

      puts "Digite o novo valor (caso queira manter o antigo apenas aperte ENTER):"
      valor_antigo = produto[:Valor]

      produto[:Valor] = gets.chomp
      produto[:Valor] = produto[:Valor].empty? ? valor_antigo : produto[:Valor]
    end
  end
end

def remov_produtos
  puts "\nQual o nome do produto que deseja remover?"
  nome = gets.chomp

  @lista.each do |produto|
    if produto[:Nome].downcase == (nome.downcase)
      indice = @lista.index(produto)
      @lista.delete_at(indice)
    end
  end
end

loop do
  puts "\n1- Produtos\n2- Adicionar produto\n3- Procurar produto\n4- Editar produto\n5- Remover produto\n0- Sair"
  puts ""
  x = gets.chomp.to_i()
  case
  when x == 0
    puts "\nAté!"
    break
  when x == 1
    lista_produtos
  when x == 2
    add_produtos
  when x == 3
    proc_produtos
  when x == 4
    edit_produtos
  when x == 5
    remov_produtos
  else
    puts"Valor Incorreto"
  end
end
