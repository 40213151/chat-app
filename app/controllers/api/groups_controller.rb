class Api::GroupsController < ApplicationController
  before_action :set_group, only: [:show,:update,:destroy]

  def index
    groups = Group.all
    render json: groups
  end

  def show
    render json: @group
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      render json: @group, status: :created
    else
      render json: { errors: @group.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
      if @group.update(group_params)
        head :no_content
      else
        render json: { errors: @group.errors.full_messages }, status: :unprocessable_entity
      end
  end

  def destroy
    @group.destroy!
    head :no_content
  end

  private
  def set_group
    @group = Group.find(params[:id])
  end

  def group_params
    params.require(:group).permit(:name)
  end
end
