def _ColetaInformacoes
  puts "\nPor favor digite o seu peso:"
  peso = gets.chomp.to_f()
  puts "\nPor favor digite sua altura:"
  alt = gets.chomp.to_f()
  _ValidaInformacoes(peso, alt)
end

def _ValidaInformacoes(peso, alt)
  if peso <= 0
    puts"Peso inválido"
  elsif alt <= 0
    puts "Altura inválida"
  else
    _CalculaIMC(peso,alt)
  end
end

def _CalculaIMC(peso,alt)
  imc = peso / (alt * alt)
  puts "\nSeu IMC é: " '%.2f' % imc + " kg/m²"
  _VerificaIMC(imc)
end

def _VerificaIMC(imc)
  texto1= "\nVocê está"
  texto2= ["abaixo do peso ideal", "com o peso normal", "com sobrepeso", "com obesidade", "com obesidade grave"]
  case imc
  when 0..18
    puts "#{texto1} #{texto2[0]}!"

  when 18,5..25
    puts "#{texto1} #{texto2[1]}!"

  when 25..29,9
    puts "#{texto1} #{texto2[2]}!"

  when 29,9..40
    puts "#{texto1} #{texto2[3]}!"

  when 40..100
    puts "#{texto1} #{texto2[4]}!"
  end
end

puts "Bem vindo ao calculador de IMC!"
_ColetaInformacoes
