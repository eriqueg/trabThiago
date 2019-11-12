require "rails_helper"

RSpec.describe GrupoProdutosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/grupo_produtos").to route_to("grupo_produtos#index")
    end

    it "routes to #new" do
      expect(:get => "/grupo_produtos/new").to route_to("grupo_produtos#new")
    end

    it "routes to #show" do
      expect(:get => "/grupo_produtos/1").to route_to("grupo_produtos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/grupo_produtos/1/edit").to route_to("grupo_produtos#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/grupo_produtos").to route_to("grupo_produtos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/grupo_produtos/1").to route_to("grupo_produtos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/grupo_produtos/1").to route_to("grupo_produtos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/grupo_produtos/1").to route_to("grupo_produtos#destroy", :id => "1")
    end
  end
end
