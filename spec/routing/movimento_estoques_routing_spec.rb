require "rails_helper"

RSpec.describe MovimentoEstoquesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/movimento_estoques").to route_to("movimento_estoques#index")
    end

    it "routes to #new" do
      expect(:get => "/movimento_estoques/new").to route_to("movimento_estoques#new")
    end

    it "routes to #show" do
      expect(:get => "/movimento_estoques/1").to route_to("movimento_estoques#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/movimento_estoques/1/edit").to route_to("movimento_estoques#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/movimento_estoques").to route_to("movimento_estoques#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/movimento_estoques/1").to route_to("movimento_estoques#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/movimento_estoques/1").to route_to("movimento_estoques#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/movimento_estoques/1").to route_to("movimento_estoques#destroy", :id => "1")
    end
  end
end
