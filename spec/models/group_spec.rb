require "rails_helper"

RSpec.describe Group, type: :model do
  describe "Model Validations" do
    it { is_expected.to validate_presence_of(:name) }
  end

  describe "Model Associations" do
    let!(:group) { FactoryBot.create(:groups) }
    let!(:first_transaction) { FactoryBot.create(:transactions, group_id: group.id) }
    let!(:second_transaction) { FactoryBot.create(:transactions, group_id: group.id) }
    it { should belong_to(:user) }
    it { should respond_to(:transaction) }
  end
end