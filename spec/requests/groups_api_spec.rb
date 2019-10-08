require 'rails_helper'

RSpec.describe "GroupApis", type: :request do
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
      group_params = FactoryBot.attributes_for(:group, name: nil)
      expect{
        post api_groups_path, params: {group: group_params}
      }.to_not change(Group, :count)
    end
  end
end
