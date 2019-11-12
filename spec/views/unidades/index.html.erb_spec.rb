require 'rails_helper'

RSpec.describe "unidades/index", type: :view do
  before(:each) do
    assign(:unidades, [
      Unidade.create!(
        :descricao => "Descricao",
        :sigla => "Sigla"
      ),
      Unidade.create!(
        :descricao => "Descricao",
        :sigla => "Sigla"
      )
    ])
  end

  it "renders a list of unidades" do
    render
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
    assert_select "tr>td", :text => "Sigla".to_s, :count => 2
  end
end
