require 'rails_helper'


describe "Static Pages" do
	subject { page }

	describe "Home Page" do
		before {visit root_path}	  
		it { should have_title(full_title('')) }
		it { should have_selector('h1', text: 'Sample App') }		
		it { should_not have_selector('title', text: '| Home') }
	end

	describe "Help Page" do
		before {visit help_path}	  
		it { should have_title(full_title('Help')) }
		it { should have_selector('h1', text: 'Help') }
		it { should have_selector('p a', count: 2) }
	end

	describe "Contact Page" do
		before {visit contact_path}	  
		it { should have_title(full_title('Contact')) }
		it { should have_selector('h1', text: 'Contact') }
		it { should have_selector('p a', count: 1) }
	end

	describe "About Page" do
		before {visit about_path}	  
		it { should have_title(full_title('About')) }
		it { should have_selector('h1', text: 'About') }
		it { should have_selector('p a', count: 4) }
	end

end

