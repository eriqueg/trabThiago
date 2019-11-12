require 'rails_helper'

RSpec.describe "movimento_estoques/index", type: :view do
  before(:each) do
    assign(:movimento_estoques, [
      MovimentoEstoque.create!(
        :quantidade => 2,
        :pessoa => nil,
        :operacao => nil,
        :produto => nil
      ),
      MovimentoEstoque.create!(
        :quantidade => 2,
        :pessoa => nil,
        :operacao => nil,
        :produto => nil
      )
    ])
  end

  it "renders a list of movimento_estoques" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
