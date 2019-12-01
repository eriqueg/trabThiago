require 'rails_helper'

RSpec.describe Endereco, type: :model do
    context 'validações gerais' do
        it { should validate_presence_of(:rua) }
        it { should validate_presence_of(:bairro) }
        it { should validate_presence_of(:numero) }
        it { should belong_to(:cidade) }
    
        
    end


end
