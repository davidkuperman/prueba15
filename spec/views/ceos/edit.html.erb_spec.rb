require 'spec_helper'

describe "ceos/edit.html.erb" do
  before(:each) do
    @ceo = assign(:ceo, stub_model(Ceo,
      :name => "MyString"
    ))
  end

  it "renders the edit ceo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => ceos_path(@ceo), :method => "post" do
      assert_select "input#ceo_name", :name => "ceo[name]"
    end
  end
end
