require 'rails_helper'

RSpec.describe "GrupoProdutos", type: :request do
  describe "GET /grupo_produtos" do
    it "works! (now write some real specs)" do
      get grupo_produtos_path
      expect(response).to have_http_status(200)
    end
  end
end
