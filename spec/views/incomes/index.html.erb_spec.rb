require 'spec_helper'

describe "incomes/index.html.erb" do
  before(:each) do
    assign(:incomes, [
      stub_model(Income,
        :ammount => 1
      ),
      stub_model(Income,
        :ammount => 1
      )
    ])
  end

  it "renders a list of incomes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
