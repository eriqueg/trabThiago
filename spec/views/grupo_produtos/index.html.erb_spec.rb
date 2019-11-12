require 'rails_helper'

RSpec.describe "grupo_produtos/index", type: :view do
  before(:each) do
    assign(:grupo_produtos, [
      GrupoProduto.create!(
        :nome => "Nome"
      ),
      GrupoProduto.create!(
        :nome => "Nome"
      )
    ])
  end

  it "renders a list of grupo_produtos" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
  end
end
