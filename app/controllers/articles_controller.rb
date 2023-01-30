# frozen_string_literal: true

class ArticlesController < ApplicationController
  before_action :set_article, only: %i[show edit update destroy]

  # GET /articles or /articles.json
  def index
    articles_url = "https://s3-eu-west-1.amazonaws.com/olio-staging-images/developer/test-articles-v4.json"
    @articles = ArticlesRetriever.new(articles_url:)
  end

  # GET /articles/1 or /articles/1.json
  def show
  end

  # PATCH/PUT /articles/1 or /articles/1.json
  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to article_url(@article), notice: "Article was successfully updated." }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def article_params
    params.require(:article).permit(:external_id, :liked)
  end
end
