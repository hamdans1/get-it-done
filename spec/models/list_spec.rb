require 'rails_helper'

RSpec.describe List, type: :model do
    let(:title) {RandomData.random_sentence}
    let(:private) {true}
    let(:user) {User.create!(email: "member@getitdone.com", password_digest: "password")}
    let(:list) {List.create!(title: title, private: private, user: user)}
    
    it{is_expected.to have_many(:items)}
    it{is_expected.to belong_to(:user)}
    
    it{is_expected.to validate_presence_of(:title)}
    it{is_expected.to validate_presence_of(:user)}
    it{is_expected.to validate_presence_of(:private)}
    
    it{is_expected.to validate_length_of(:title).is_at_least(5)}
    it{is_expected.to validate_length_of(:title).is_at_most(50)}
    
    describe "attributes" do
        it "has title, user, and private attributes" do
            expect(list).to have_attributes(title: title, private: private, user: user)
        end
    end
  
end
