require 'rails_helper'

RSpec.describe "grupo_produtos/new", type: :view do
  before(:each) do
    assign(:grupo_produto, GrupoProduto.new(
      :nome => "MyString"
    ))
  end

  it "renders new grupo_produto form" do
    render

    assert_select "form[action=?][method=?]", grupo_produtos_path, "post" do

      assert_select "input[name=?]", "grupo_produto[nome]"
    end
  end
end
