# frozen_string_literal: true

# @resource Articles
#
# This document describes displaying all the articles and updating it's liked status
#

class ArticlesController < ApplicationController
  ##
  # Returns a list of articles in the defined URL
  #
  # Articles can be liked.
  #
  # @path [GET] /articles
  #
  # @parameter offset [integer] Used for pagination of response data (default: 20 items per response).
  #
  def index
    articles_url = "https://s3-eu-west-1.amazonaws.com/olio-staging-images/developer/test-articles-v4.json"
    @articles = ArticlesRetriever.new(articles_url:).execute
  end

  ##
  # Sets the articles liked status
  #
  # @path [POST] /articles/update_liked
  #
  # @parameter external_id [integer] Represents the external id of the article to update
  # @parameter liked [boolean] The new liked status
  # @response 200 Successful operation
  #
  def update_liked
    article = Article.find_by(external_id: permitted_params.fetch(:external_id))
    article.update(liked: permitted_params[:liked].present?)
    # We could track likes pressed here
    render json: {}, status: :ok, content_type: "application/json"
  end

  private

  def permitted_params
    params.permit(:external_id, :liked)
  end
end
