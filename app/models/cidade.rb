class Cidade < ApplicationRecord
  belongs_to :estado

  validates :nome, :estado, presence: true

  validates :nome,   uniqueness: { scope: [:nome, :estado],
  message: 'Cidade ja cadastrada!' }
end
