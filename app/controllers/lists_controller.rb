class ListsController < ApplicationController
  # before_action :set_list, only: %i[ show edit update destroy ]

  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def show
    @list = List.find(params[:id])
  end

  def create
    @list = List.new(list_params)

    if @list.save
      redirect_to list_path(@list), notice: 'List was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  # def set_list
  #   @list = List.find(params[:id])
  # end

  def list_params
    params.require(:list).permit(:name)
  end
end
