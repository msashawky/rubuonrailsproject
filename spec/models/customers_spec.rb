require 'rails_helper'
require 'spec_helper'
require 'customer'
#require "validates_email_format_of/rspec_matcher"


describe Customer do
	subject { Customer.new }
  #it "check for name" do
  #	should validate_presence_of(:first_name)
  #end
  #it "check Uniqueness of UserName" do
  #	should validate_uniqueness_of(:username)
  #end
  it "respond to  all the Attributes" do
  should respond_to(:first_name , :last_name, :email, :date_of_birth, :username, :password, :phone, :gender)
  end
  #it {should validate_length_of(:password)}
  #it {should validate_numericality_of(:phone)}
  it {subject.email.should be_instance_of(String)}
  it {should be_kind_of(ActiveRecord::Base)}
  #it { should validate_format_of(:email).with_message('Please make sure your email like someone@domain.com') }
end
