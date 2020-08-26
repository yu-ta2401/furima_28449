class HomeController < ApplicationController
  # ユーザがログインしていないと"show"にアクセスできない
  before_action :authenticate_user!, only: [:show, :new]

  def index
    @items = Item.all.order("created_at DESC")
  end

  def show

  end

  def new
    @article= current_user.articles.build
  end
end
