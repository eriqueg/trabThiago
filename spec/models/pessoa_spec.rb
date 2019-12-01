require 'rails_helper'
RSpec.describe Pessoa, type: :model do
    context 'Validações gerais:' do
        it { should belong_to(:endereco) }
        it { should validate_presence_of(:nome) }
        it { should validate_presence_of(:documento) }
    end

    context 'ao informar endereco da pessoa' do
       
        
        let(:cidade) { FactoryBot.create(:cidade)}
        let(:endereco) { FactoryBot.create(:endereco, cidade: cidade)}
        let(:pessoa) { FactoryBot.create(:pessoa, endereco: endereco) }
        
        context 'duas vezes com o mesmo documento' do
          let(:pessoa_repetida) { FactoryBot.build(:pessoa, endereco: endereco, documento: pessoa.documento, 
                                                    nome: pessoa.nome) }
        
        it 'deve bloquear' do
            expect(pessoa_repetida).to_not be_valid
        end
        end
    end

end