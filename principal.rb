require "./classes/conta_bancaria.rb"

conta_gabriel = ContaBancaria.new ("gabriel", 100)
conta_rafael = ContaBancaria.new("rafael", 200)

conta_gabriel.transferir(conta_rafael, 50)


puts "Saldo do Gabriel: " + conta_gabriel.saldo
puts "Saldo do Rafael: " + conta_rafael.saldo

#teste de conta sem saldo
conta_gabriel.transferir(conta_rafael, 70)