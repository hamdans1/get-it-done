require 'rails_helper'

RSpec.describe User, type: :model do
    let(:user) {User.create!(email:"member@getitdone.com", password_digest: "password")}
    
    it {is_expected.to have_many(:lists)}
    
    #email validation
    it {is_expected.to validate_presence_of(:email)}
    it {is_expected.to validate_uniqueness_of(:email)}
    it {is_expected.to validate_length_of(:email).is_at_least(3)}
    it {is_expected.to allow_value("user@getitdone.com").for(:email)}
    
    #password validation
    it {is_expected.to validate_presence_of(:password_digest)}
    it {is_expected.to validate_length_of(:password_digest).is_at_least(5)}
    
    describe "attributes" do
        it "should have email and password attributes" do
            expect(user).to have_attributes(email: user.email, password_digest: user.password_digest)
        end
        
    end
    
end
