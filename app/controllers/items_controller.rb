class ItemsController < ApplicationController
  def index
    @items = Item.all
    render text: @items.map { |i| "#{i.name}: #{iprice}.join("<br/>") " }
  end
end
