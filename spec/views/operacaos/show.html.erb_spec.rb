require 'rails_helper'

RSpec.describe "operacaos/show", type: :view do
  before(:each) do
    @operacao = assign(:operacao, Operacao.create!(
      :descricao => "Descricao",
      :tipo => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Descricao/)
    expect(rendered).to match(/2/)
  end
end
