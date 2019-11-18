require 'rails_helper'

RSpec.describe Estado, type: :model do
  context 'validações gerais' do

    it { should validate_presence_of(:nome) }

    
  end


  context 'Ao cadastrar Estado' do
    let(:estado) { FactoryBot.create(:estado) }

    context 'duplicado' do
      let(:estado_repetido) { FactoryBot.build(:estado, nome: estado.nome) }

        it 'deve bloquear' do
        expect(estado_repetido).to_not be_valid
        end
      end
    end

end
