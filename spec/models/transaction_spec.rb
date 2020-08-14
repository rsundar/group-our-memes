require 'rails_helper'

RSpec.describe Transaction, type: :model do
  describe 'Model Validations' do
    it { is_expected.to validate_presence_of(:about) }
    it { is_expected.to validate_presence_of(:rating) }
    it { is_expected.to validate_presence_of(:name) }
  end

  describe 'Model associations' do
    it { should belong_to(:user) }
    it { should belong_to(:group).optional }
  end

  context 'scope validations' do
    let!(:user) { FactoryBot.create(:user) }
    let!(:today) { Time.now }
    let!(:old_transaction) { FactoryBot.create(:transactions, user_id: user.id, created_at: today - 2.days) }
    let!(:new_transaction) { FactoryBot.create(:transactions, user_id: user.id, created_at: today) }
    describe ':desc' do
      it 'The transactions should be ordered by the most recent first' do
        expect(Transaction.desc.first).to eq new_transaction
        expect(Transaction.desc.last).to eq old_transaction
      end
    end
  end
end
