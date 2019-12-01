FactoryBot.define do
    factory :movimento_estoque do
      data { 30/11/2019 }
      quantidade { 18 }
      association :pessoa, factory: :pessoa
      association :operacao, factory: :operacao
      association :produto, factory: :produto
    end
end