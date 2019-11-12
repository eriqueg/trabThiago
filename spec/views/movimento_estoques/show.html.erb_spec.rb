require 'rails_helper'

RSpec.describe "movimento_estoques/show", type: :view do
  before(:each) do
    @movimento_estoque = assign(:movimento_estoque, MovimentoEstoque.create!(
      :quantidade => 2,
      :pessoa => nil,
      :operacao => nil,
      :produto => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
