require 'rails_helper'

RSpec.describe "grupo_produtos/edit", type: :view do
  before(:each) do
    @grupo_produto = assign(:grupo_produto, GrupoProduto.create!(
      :nome => "MyString"
    ))
  end

  it "renders the edit grupo_produto form" do
    render

    assert_select "form[action=?][method=?]", grupo_produto_path(@grupo_produto), "post" do

      assert_select "input[name=?]", "grupo_produto[nome]"
    end
  end
end
