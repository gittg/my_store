class ItemsController < ApplicationController
  
def index
  end

def show
  @item = Item.where(id: params[:id]).first
  render 'items/show'
end

def new
end

def edit 
end

def create
end

def update
end

def destroy
end


end
