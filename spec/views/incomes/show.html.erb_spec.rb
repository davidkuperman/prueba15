require 'spec_helper'

describe "incomes/show.html.erb" do
  before(:each) do
    @income = assign(:income, stub_model(Income,
      :ammount => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
