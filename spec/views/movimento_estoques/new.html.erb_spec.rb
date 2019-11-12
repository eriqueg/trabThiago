require 'rails_helper'

RSpec.describe "movimento_estoques/new", type: :view do
  before(:each) do
    assign(:movimento_estoque, MovimentoEstoque.new(
      :quantidade => 1,
      :pessoa => nil,
      :operacao => nil,
      :produto => nil
    ))
  end

  it "renders new movimento_estoque form" do
    render

    assert_select "form[action=?][method=?]", movimento_estoques_path, "post" do

      assert_select "input[name=?]", "movimento_estoque[quantidade]"

      assert_select "input[name=?]", "movimento_estoque[pessoa_id]"

      assert_select "input[name=?]", "movimento_estoque[operacao_id]"

      assert_select "input[name=?]", "movimento_estoque[produto_id]"
    end
  end
end
