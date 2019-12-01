FactoryBot.define do
    factory :produto do
      nome { 'Askov' }
      association :unidade, factory: :unidade
      association :grupo_produto, factory: :grupode_produto
    end
end