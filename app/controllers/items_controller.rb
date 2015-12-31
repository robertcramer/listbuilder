class ItemsController < ApplicationController
  def index
    @list = List.find(params[:list_id])
  end

  def new
    @list = List.find(params[:list_id])
    @list = @list.items.new
  end

  def create
    @list = List.find(params[:list_id])
    @list = List.items.new(item_params)
    if @item.save
      flash[:success] = "Added to do list item."
      redirect_to list_items_path
    else
      flash[:error] = "There was a problem adding that item to the list."
      render action: :new
    end
  end

  private
  def item_params
    params[:item].permit(:content)
  end
end
