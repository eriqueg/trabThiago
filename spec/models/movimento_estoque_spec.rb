require 'rails_helper'


RSpec.describe MovimentoEstoque, type: :model do
    context 'Validações gerais:' do
      it { should belong_to(:pessoa) }
      it { should belong_to(:operacao) }
      it { should belong_to(:produto) }
      it { should validate_presence_of(:data) }
      it { should validate_numericality_of(:quantidade).is_greater_than_or_equal_to(1) }
    end

    context 'movimentar estoque' do
        let(:peracao) { FactoryBot.create(:operacao)}
        let(:cidade) { FactoryBot.create(:cidade)}
        let(:endereco) { FactoryBot.create(:endereco, cidade: cidade)}
        let(:pessoa) { FactoryBot.create(:pessoa, endereco: endereco) }
        let(:unidade) { FactoryBot.create(:unidade)}
        let(:grupo) { FactoryBot.create(:grupo_produto)}
        let(:produto) { FactoryBot.create(:produto, grupo_produto: grupo, unidade: unidade) }
        let(:movimento_estoque) { FactoryBot.create(:movimento_estoque, operacao: operacao, pessoa: pessoa, produto: produto) }
    
        context 'em vendas' do
          it 'deve diminuir' do
            expect(movimento_estoque.venda(produto, Date.today, movimento_estoque.quantidade)).to eq(15)
        end  
        end  

        context 'em compras' do
            it 'deve aumentar'do
            expect(movimento_estoque.compra(produto, Date.today, movimento_estoque.quantidade)).to eq(15)
        end
        end
        
        context 'em devolucao de compras' do
            it 'deve diminuir'do
            expect(movimento_estoque.dev_compra(produto, Date.today, movimento_estoque.quantidade)).to eq(15)
        end
        end
       
        context 'em devolucao de vendas' do
            it 'deve aumentar'do
            expect(movimento_estoque.dev_vendas(produto, Date.today, movimento_estoque.quantidade)).to eq(15)
        end
        end

        end
end