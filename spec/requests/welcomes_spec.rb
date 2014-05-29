require 'spec_helper'

describe "Welcomes" do
  let(:base_title) { "MeuFuteba |" }
  describe "GET root_path" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get root_path
      response.status.should be(200)
    end
  end
  
  describe "About page" do
    it "should have the content 'About Us'" do
      visit '/welcome/about'
      expect(page).to have_content('About Us')
    end

    it "should have the title 'About Us'" do
      visit '/welcome/about'
      expect(page).to have_title("#{base_title} About Us")
    end
  end
end
