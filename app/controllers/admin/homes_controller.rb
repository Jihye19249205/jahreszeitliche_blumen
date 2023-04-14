class Admin::HomesController < ApplicationController
  def top
    @pictures = Picture.order('id DESC').limit(8)
  end
end
