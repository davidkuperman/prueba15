require 'spec_helper'
describe PagesController do
render_views

describe "GET 'home'" do
 it "should be successful" do
   get 'home'
   response.should be_success
 end

 it "should have the right title" do
   get 'home'
   response.should have_selector(:title, :content => "ROR Home")
 end
end

describe "GET 'about'" do
  it "should be success" do
    get 'about'
    response.should be_success
  end

  it "should have the right title" do
    get 'about'
    response.should have_selector(:title, :content => "ROR About")
  end
end

  describe "GET 'pricing'" do
    it "should be succesfull" do
      get 'pricing'
      response.should be_success
    end

    it "should have the rigth title" do
      get 'pricing'
      response.should have_selector(:title, :content => "ROR Pricing")
    end
  end

end