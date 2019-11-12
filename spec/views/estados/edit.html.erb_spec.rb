require 'rails_helper'

RSpec.describe "estados/edit", type: :view do
  before(:each) do
    @estado = assign(:estado, Estado.create!(
      :nome => "MyString"
    ))
  end

  it "renders the edit estado form" do
    render

    assert_select "form[action=?][method=?]", estado_path(@estado), "post" do

      assert_select "input[name=?]", "estado[nome]"
    end
  end
end
