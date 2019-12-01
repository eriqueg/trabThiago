class Operacao < ApplicationRecord

    enum tipo: { venda: 0, compra: 1, devolucaode_compra: 2, devolucaode_venda: 3 }

    validates :descricao, :tipo, presence: true

end
