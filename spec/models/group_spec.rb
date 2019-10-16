require 'rails_helper'

RSpec.describe Group, type: :model do
  describe '#create' do
    context 'can save' do
      it 'is invalid with name' do
        expect(build(:group)).to be_valid
      end
    end

    context 'can not save' do
      it 'is invalid without name' do
        group = build(:group, name: nil)
        group.valid?
        expect(group.errors[:name])
      end
      it "is invalid with a duplicate name" do
        FactoryBot.create :test
        group = Group.new(
          name: 'test'
        )
        group.valid?
        expect(group.valid?).to eq(false)
      end
    end
  end
end
