require 'spec_helper'

describe "ceos/show.html.erb" do
  before(:each) do
    @ceo = assign(:ceo, stub_model(Ceo,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
