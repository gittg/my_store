class ItemsController < ApplicationController
  
def index
  @items = Item.all
  end

def show
  unless @item = Item.where(id: params[:id]).first
  render text: "Page not found", status: 404
  end
end

def new

end

def edit 
end

def create
  @item = Item.new(item_params)
  @item.save
  redirect_to @item
end

def update
end

def destroy
end

private

  def item_params
    params.require(:item).permit(:price, :name, :description, :weight)
  end

end
