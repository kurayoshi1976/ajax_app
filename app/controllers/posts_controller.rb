class PostsController < ApplicationController
  def index
    @posts = Post.all.order(id: "DESC")  # 全てのレコードを@postに代入 id: "DESC"で新しい情報が1番上に表示されるようにする
  end

  def create
    Post.create(content: params[:content])
    redirect_to action: :index
  end
end