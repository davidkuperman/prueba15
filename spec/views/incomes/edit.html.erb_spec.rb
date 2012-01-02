require 'spec_helper'

describe "incomes/edit.html.erb" do
  before(:each) do
    @income = assign(:income, stub_model(Income,
      :ammount => 1
    ))
  end

  it "renders the edit income form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => incomes_path(@income), :method => "post" do
      assert_select "input#income_ammount", :name => "income[ammount]"
    end
  end
end
