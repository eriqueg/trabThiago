class Produto < ApplicationRecord
  belongs_to :unidade
  belongs_to :grupo_produto

  validates :nome, presence: true

  validates :nome, :grupo_produto, :unidade,   uniqueness: true
end
