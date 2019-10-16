require 'rails_helper'

RSpec.describe "GroupApis", type: :request do
  describe 'POST #create' do
    context "with valid attributes" do
      it "adds a group" do
        group_params = FactoryBot.attributes_for(:group)
        expect{
            post api_groups_path, params: {group: group_params}
          }.to change(Group, :count).by(1)
      end
    end

    context "with invalid attributes" do
      it "does not add a group" do
        group_params = FactoryBot.attributes_for(:group, :invalid)
        expect{
          post api_groups_path, params: {group: group_params}
        }.to_not change(Group, :count)
      end
    end
  end

  describe 'PUT #update' do
    let(:test) { FactoryBot.create :test }
    context "with valid attributes" do
      it "edit a group" do
        group_params = FactoryBot.attributes_for(:test2)
        expect{
            put api_group_path test, params: {group: group_params}
          }.to change{ Group.find(test.id).name }.from('test').to('test2')
      end
    end

    context "with invalid attributes" do
      it "does not add edit a group" do
       group_params = FactoryBot.attributes_for(:group, :invalid)
        expect{
            put api_group_path test, params: {group: group_params}
          }.to_not change(Group.find(test.id), :name)
      end
    end
  end
end
