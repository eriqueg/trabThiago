require 'rails_helper'

RSpec.describe "estados/show", type: :view do
  before(:each) do
    @estado = assign(:estado, Estado.create!(
      :nome => "Nome"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
  end
end
