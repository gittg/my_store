class ItemsController < ApplicationController
  def index
    @items = Item.all
    render text: @items.map { |i| "#{i.name}: #{i.price}"}.join("<br/>") 
  end

  def show
    @item = Item.create(name: params[:name], description: params[:description], price: params[:price], real: params[:real], weight: params[:weight])
    render text: "#{@item.id}: #{@item.name} (#{!@item.new_record?})"
  end




end
