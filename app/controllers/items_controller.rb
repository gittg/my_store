class ItemsController < ApplicationController
  
def index
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
end

def update
end

def destroy
end


end
