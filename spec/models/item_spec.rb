require 'rails_helper'

RSpec.describe Item, type: :model do
    
    let(:user) {User.create!(email: "member@getitdone.com", password_digest: "password")}
    let(:list) {List.create!(title: RandomData.random_sentence, private?: true, user: user)}
    let(:body) {RandomData.random_sentence}
    let(:completed?) {true}
    let(:item) {Item.create!(body: body, list: list, completed?: completed?)}
  
    it {is_expected.to belong_to(:list)}
  
    it {is_expected.to validate_presence_of(:body)}
  
    describe "attributes" do
        it "has body and list attributes" do
            expect(item).to have_attributes(body: body, list: list, completed?: completed?)
        end
    end
  
end
