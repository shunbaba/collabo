class PostsController < ApplicationController
  def new
  	@post = Article.new
  end

  def index
  	@posts = Article.all
    @post = Article.new
  end

  def show
  	@post = Article.find(params[:id])
  end

  def edit
    @post = Article.find(params[:id])
  end

  def create
    # ストロングパラメーターを使用
     post = Article.new(post_params)
    # DBへ保存する
     post.save
    # トップ画面へリダイレクト
    redirect_to index_path
  end

  def update
    post = Article.find(params[:id])
    post.update(post_params)
    redirect_to post_path(post.id)
  end

  def destroy
    post = Article.find(params[:id])
    post.destroy
    redirect_to index_path
  end

	private
		def post_params
	 		params.require(:article).permit(:title, :weather, :body, :image)
	 	end
end
