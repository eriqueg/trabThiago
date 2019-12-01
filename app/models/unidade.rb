class Unidade < ApplicationRecord

    validates :descricao, :sigla, presence: true

    validates :descricao,   uniqueness: true

end
