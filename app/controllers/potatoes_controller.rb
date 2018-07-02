class PotatoesController < ApplicationController
  before_action :fetch_potato, only: [:show, :edit, :destroy, :update]

  def index
    @potatoes = Potato.all
  end

  def show
  end

  def edit
  end

  def destroy
    @potato.destroy
    redirect_to potatoes_path
  end

  def create
    p params
    @potato = Potato.new(name: params[:potato][:name], eyes: params[:potato][:eyes])
    # @potato.name = params[:name]
    # @potato.eyes = params[:eyes]
    @potato.save
    redirect_to potato_path(@potato)
  end

  def update
    @potato.update(name: params[:potato][:name], eyes: params[:potato][:eyes])
    redirect_to potato_path(@potato)
  end

  def new
    @potato = Potato.new
  end

  private
  def fetch_potato
    @potato = Potato.find(params[:id])
  end
end
