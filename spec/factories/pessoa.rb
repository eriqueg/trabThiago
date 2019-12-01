FactoryBot.define do
    factory :pessoa do
      nome { "Aparicio" }
      documento { "11323461930" }
      association :endereco, factory: :endereco
    end
end