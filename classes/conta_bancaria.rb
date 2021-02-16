class ContaBancaria
    def initialize(dono, valor_inicial)
        @dono = dono
        @valor = valor
    end

    def transferir(outra_conta, valor)
        if saldo >= valor
            debitar(valor)
            outra_conta.depositar(valor)
        else
            puts "Saldo insuficiente!"
        end
    end

    def saldo
        @valor
    end

    private def debitar(valor_debito)
        @valor -= valor_debito
    end

    protected def depositar(valor_deposito)
        @valor += valor_deposito
    end
end
