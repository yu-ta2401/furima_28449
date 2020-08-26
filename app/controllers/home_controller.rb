class HomeController < ApplicationController
  # ユーザがログインしていないと"show"にアクセスできない
  before_action :authenticate_user!, only: [:show, :new]

  def index
    #flash[:notice] = "ログイン済ユーザーのみ記事の詳細を確認できます" unless user_signed_in?
    @items = Item.order("created_at DESC")
  end

  def show

  end

  def new
    @article= current_user.articles.build
  end
end
