require "./classes/conta_bancaria.rb"
require "./classes/conta_taxa.rb"

conta_gabriel = ContaComTaxa.new ("gabriel", 100)
conta_rafael = ContaBancaria.new("rafael", 200)

conta_gabriel.transferir(conta_rafael, 50)


puts "Saldo do Gabriel: " + conta_gabriel.saldo
puts "Saldo do Rafael: " + conta_rafael.saldo

#teste de conta sem saldo
begin
conta_gabriel.transferir(conta_rafael, 70)
rescue StandardError => meu_erro
    p "Não foi possível transferir: #{meu_erro.message}"
end

puts "Saldo do Gabriel: " + conta_gabriel.saldo
puts "Saldo do Rafael: " + conta_rafael.saldo