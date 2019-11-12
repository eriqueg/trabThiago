require 'rails_helper'

RSpec.describe "MovimentoEstoques", type: :request do
  describe "GET /movimento_estoques" do
    it "works! (now write some real specs)" do
      get movimento_estoques_path
      expect(response).to have_http_status(200)
    end
  end
end
