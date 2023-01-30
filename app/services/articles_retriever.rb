# frozen_string_literal: true

class ArticlesRetriever
  attr_accessor :articles_url

  def initialize(articles_url:)
    @articles_url = articles_url
  end

  def execute
    uri = URI(articles_url)
    response = Net::HTTP.get(uri)
    # Improve this with JSON Streaming so we dont load big JSONs into memory
    parsed_articles = JSON.parse(response)
    create_new_articles(article_details: parsed_articles)
    add_liked_to_article_details(article_details: parsed_articles)
  rescue StandardError => e
    # throw appropriate error message
    Rails.logger.info(e.message)
  end

  private

  def create_new_articles(article_details:)
    external_ids = article_details.pluck("id")
    existing_articles_external_ids = Article.where(external_id: external_ids).pluck(:external_id)

    (external_ids - existing_articles_external_ids).each do |external_id|
      Article.create!(external_id:)
    end
  end

  def add_liked_to_article_details(article_details:)
    articles = Article.where(external_id: article_details.pluck("id"))

    articles.each do |article|
      article_details.find { |details| details["id"] == article.external_id }.merge!("liked" => article.liked)
    end

    article_details
  end
end
