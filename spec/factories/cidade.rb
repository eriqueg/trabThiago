FactoryBot.define do
    factory :cidade do
      nome { 'Eneas Marques' }
      association :estado, factory: :estado
    end
  
    
  
  end