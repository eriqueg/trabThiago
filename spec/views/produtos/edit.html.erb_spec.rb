require 'rails_helper'

RSpec.describe "produtos/edit", type: :view do
  before(:each) do
    @produto = assign(:produto, Produto.create!(
      :nome => "MyString",
      :unidade => nil,
      :grupo_produto => nil
    ))
  end

  it "renders the edit produto form" do
    render

    assert_select "form[action=?][method=?]", produto_path(@produto), "post" do

      assert_select "input[name=?]", "produto[nome]"

      assert_select "input[name=?]", "produto[unidade_id]"

      assert_select "input[name=?]", "produto[grupo_produto_id]"
    end
  end
end
