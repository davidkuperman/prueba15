require 'spec_helper'

describe "incomes/new.html.erb" do
  before(:each) do
    assign(:income, stub_model(Income,
      :ammount => 1
    ).as_new_record)
  end

  it "renders new income form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => incomes_path, :method => "post" do
      assert_select "input#income_ammount", :name => "income[ammount]"
    end
  end
end
