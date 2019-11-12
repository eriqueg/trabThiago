require 'rails_helper'

RSpec.describe "grupo_produtos/show", type: :view do
  before(:each) do
    @grupo_produto = assign(:grupo_produto, GrupoProduto.create!(
      :nome => "Nome"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
  end
end
