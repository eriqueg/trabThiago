class Endereco < ApplicationRecord
  belongs_to :cidade

  validates :rua, :cidade, :bairro, :numero,  presence: true

end
