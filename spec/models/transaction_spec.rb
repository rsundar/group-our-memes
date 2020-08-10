require 'rails_helper'

RSpec.describe Transaction, type: :model do
  describe "Model Validations" do
    it { is_expected.to validate_presence_of(:about) }
    it { is_expected.to validate_presence_of(:rating) }
    it { is_expected.to validate_presence_of(:name) }
  end

  describe "Model associations" do
    it { should belong_to(:user) }
    it { should belong_to(:group).optional }
  end

  context "Scope Validations" do
    let(:transactions) { FactoryBot.create_list(:transactions, 3) }
    describe ":desc" do
      it "The Transactions should be ordered by most recent" do
        expect(transactions.desc.to_a).to eq transactions.sort_by(&:created_at)
      end
    end
  end
    

end