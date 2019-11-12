require 'rails_helper'

RSpec.describe "movimento_estoques/edit", type: :view do
  before(:each) do
    @movimento_estoque = assign(:movimento_estoque, MovimentoEstoque.create!(
      :quantidade => 1,
      :pessoa => nil,
      :operacao => nil,
      :produto => nil
    ))
  end

  it "renders the edit movimento_estoque form" do
    render

    assert_select "form[action=?][method=?]", movimento_estoque_path(@movimento_estoque), "post" do

      assert_select "input[name=?]", "movimento_estoque[quantidade]"

      assert_select "input[name=?]", "movimento_estoque[pessoa_id]"

      assert_select "input[name=?]", "movimento_estoque[operacao_id]"

      assert_select "input[name=?]", "movimento_estoque[produto_id]"
    end
  end
end
