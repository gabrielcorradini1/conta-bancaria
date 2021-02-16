class ContaComTaxa < ContaBancaria
    def transferir(outra_conta, valor)
        super
        taxa = valor * 0.05
        debitar(taxa)
    end
end