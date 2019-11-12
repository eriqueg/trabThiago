require 'rails_helper'

RSpec.describe "produtos/new", type: :view do
  before(:each) do
    assign(:produto, Produto.new(
      :nome => "MyString",
      :unidade => nil,
      :grupo_produto => nil
    ))
  end

  it "renders new produto form" do
    render

    assert_select "form[action=?][method=?]", produtos_path, "post" do

      assert_select "input[name=?]", "produto[nome]"

      assert_select "input[name=?]", "produto[unidade_id]"

      assert_select "input[name=?]", "produto[grupo_produto_id]"
    end
  end
end
