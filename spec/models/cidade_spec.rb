require 'rails_helper'


RSpec.describe Cidade, type: :model do
    context 'validações gerais' do
  
      it { should validate_presence_of(:nome) }
      it { should validate_presence_of(:estado) }
  
      
    end
  
    context 'Ao cadastrar Cidade' do
        let(:cidade) { FactoryBot.create(:cidade) }
    
        context 'duplicado' do
          let(:cidade_repetida) { FactoryBot.build(:cidade, nome: cidade.nome, estado: cidade.estado) }
    
            #it 'deve bloquear' do
            #expect(cidade_repetida).to_not be_valid
            #end
          end
        end
    
  
  end
  