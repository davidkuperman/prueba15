require 'spec_helper'

describe "ceos/index.html.erb" do
  before(:each) do
    assign(:ceos, [
      stub_model(Ceo,
        :name => "Name"
      ),
      stub_model(Ceo,
        :name => "Name"
      )
    ])
  end

  it "renders a list of ceos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
