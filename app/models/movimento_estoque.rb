class MovimentoEstoque < ApplicationRecord
  belongs_to :pessoa
  belongs_to :operacao
  belongs_to :produto

  validates :quantidade, :data, presence: true
  validates :quantidade, numericality: { greater_than_or_equal_to: 1 }

  scope :venda, lambda { |produto, data, operacao = 0|
    where('produto_id = ? and data <= ? and operacao_id = ?', produto, data, operacao).sum(:quantidade * -1)
  }

  scope :compra, lambda { |produto, data, operacao = 1|
    where('produto_id = ? and data <= ? and operacao_id = ?', produto, data, operacao).sum(:quantidade)
  }

  scope :dev_compra, lambda { |produto, data, operacao = 2|
    where('produto_id = ? and data <= ? and operacao_id = ?', produto, data, operacao).sum(:quantidade * -1)
  }

  scope :dev_venda, lambda { |produto, data, operacao = 3|
    where('produto_id = ? and data <= ? and operacao_id = ?', produto, data, operacao).sum(:quantidade)
  }
end
