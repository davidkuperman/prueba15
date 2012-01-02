require 'spec_helper'
describe PagesController do
render_views

describe "GET 'home'" do
 it "should be successful" do
   get 'home'
   response.should be_success
 end
end

describe "GET 'about'" do
  it "should be success" do
    get 'about'
    response.should be_success
  end
end

  describe "GET 'pricing'" do
    it "should be succesfull" do
      get 'pricing'
      response.should be_success
    end
  end

end