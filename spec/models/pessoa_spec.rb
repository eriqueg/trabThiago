require 'rails_helper'
RSpec.describe Pessoa, type: :model do
    context 'Validações gerais:' do
        it { should belong_to(:endereco) }
        it { should validate_presence_of(:nome) }
        it { should validate_presence_of(:documento) }
    end

    context 'ao informar endereco da pessoa' do
        let(:pessoa) { FactoryBot.create(:pessoa) }

        context 'duas vezes no mesmo endereco da pessoa' do
          let(:pessoa_repetida) { FactoryBot.build(:pessoa,
        endereco: pessoa.endereco) }
        end
        it 'e no mesmo documento, deve bloquear' do
            expect(pessoa_repetida).to_not be_valid
        end
    end

end