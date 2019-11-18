class Estado < ApplicationRecord
    validates :nome, presence: true 
    validates :nome, uniqueness: { scope: [:nome],
                                  message: 'Estado ja cadastrado!' }
 
end
