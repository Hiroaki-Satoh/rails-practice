class TodolistsController < ApplicationController
  	def new
		# viewへ渡すためのインスタンス変数に空のモデルオブジェクトを生成する。
		@list = List.new
  	end

  	def create
  		# ストロングパラメータを使用
  		list = List.new(list_params)
  		# DBへ保存する
  		list.save
  		# 詳細画面へリダイレクト
  		redirect_to todolist_path(list.id)
  	end

  	def index
  		# データベース内のデータをすべて取り出す
		@lists = List.all
  	end

	def show
		@list = List.find(params[:id])
	end

  	private
  	def list_params
  		params.require(:list).permit(:title, :body)
  	end
end
