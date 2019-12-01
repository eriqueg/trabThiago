require 'rails_helper'

RSpec.describe Produto, type: :model do
    context 'Validações gerais:' do
    it { should belong_to(:unidade) } 
    it { should belong_to(:grupo_produto) } 
    it { should validate_presence_of(:nome) }
    end
    context 'Criar produto' do
        let(:unidade) { FactoryBot.create(:unidade)}
        let(:grupo) { FactoryBot.create(:grupo_produto)}
        let(:produto) { FactoryBot.create(:produto, grupo_produto: grupo, unidade: unidade) }
    
        context 'cadastrar o mesmo produto' do
        let(:produto_repetido) { FactoryBot.build(:produto, grupo_produto: grupo, unidade: unidade, nome: produto.nome) }
        
        it 'deve bloquear' do
            expect(produto_repetido).to_not be_valid
        end
        end
    end
end
