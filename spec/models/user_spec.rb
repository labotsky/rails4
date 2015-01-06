require 'rails_helper'

describe User do
 	before do
 		@user = FactoryGirl.build(:user)
	end

	subject {@user}

	it { should respond_to(:name) }
	it { should respond_to(:username) }
	it { should respond_to(:email) }
	it { should be_valid }

	describe "when name is not present" do
		before { @user.name = " " }
		it { should_not be_valid }
	end

	describe "when username is not present" do
		before { @user.username = " " }
		it { should_not be_valid }
	end
end
