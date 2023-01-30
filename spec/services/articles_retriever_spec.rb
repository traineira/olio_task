# frozen_string_literal: true

require "rails_helper"

describe ArticlesRetriever do
  subject { described_class.new(articles_url:).execute }

  let(:articles_url) { "articles_url" }
  let(:article_id_one) { 1 }
  let(:article_id_two) { 2 }
  let(:articles_json) do
    [
      {
        "id" => article_id_one,
        "title" => "Ambipur air freshener plugin",
        "description" => "Device only but refills are available most places",
        "donation_description" => "",
        "collection" => {"id" => 0},
        "section" => "product",
        "location" => {
          "latitude" => 51.7645,
          "longitude" => -3.79131,
          "distance" => 0,
          "town" => "Ystalyfera",
          "country" => "United Kingdom"
        },
        "collection_notes" => "Any time!",
        "value" => {"price" => 0, "currency" => "USD", "payment_type" => "no_payment_type"},
        "created_at" => "2020-12-12T10:49:18.000Z",
        "updated_at" => "2020-12-12T10:49:18.000Z",
        "status" => "active",
        "expiry" => "2021-04-09T10:49:15.000Z",
        "reactions" => {"likes" => 0, "by_user" => false, "views" => 18, "impressions" => 3571},
        "is_owner" => true,
        "conversations" => {"linked" => 0, "request_id" => nil},
        "photos" =>
        [
          {
            "uid" => "00gRGrBRDFYrR2j-9SJVYg",
            "files" => {
              "original" => "https://cdn.olioex.com/uploads/photo/file/00gRGrBRDFYrR2j-9SJVYg/image.jpg",
              "large" => "https://cdn.olioex.com/uploads/photo/file/00gRGrBRDFYrR2j-9SJVYg/large_image.jpg",
              "medium" => "https://cdn.olioex.com/uploads/photo/file/00gRGrBRDFYrR2j-9SJVYg/medium_image.jpg",
              "small" => "https://cdn.olioex.com/uploads/photo/file/00gRGrBRDFYrR2j-9SJVYg/small_image.jpg"
            },
            "dimensions" => {"width" => 720, "height" => 960}
          }
        ],
        "images" => [
          {
            "uid" => "00gRGrBRDFYrR2j-9SJVYg",
            "files" => {
              "original" => "https://cdn.olioex.com/uploads/photo/file/00gRGrBRDFYrR2j-9SJVYg/image.jpg",
              "large" => "https://cdn.olioex.com/uploads/photo/file/00gRGrBRDFYrR2j-9SJVYg/large_image.jpg",
              "medium" => "https://cdn.olioex.com/uploads/photo/file/00gRGrBRDFYrR2j-9SJVYg/medium_image.jpg",
              "small" => "https://cdn.olioex.com/uploads/photo/file/00gRGrBRDFYrR2j-9SJVYg/small_image.jpg"
            },
            "dimensions" => {"width" => 720, "height" => 960}
          }
        ],
        "user" => {
          "id" => 8039,
          "first_name" => "Lloyd",
          "current_avatar" => {
            "original" => "https://cdn.olioex.com/uploads/avatar/file/oZq8DF3dzLEi3Fnf4XxMrg/image.jpg",
            "large" => "https://cdn.olioex.com/uploads/avatar/file/oZq8DF3dzLEi3Fnf4XxMrg/large_image.jpg",
            "small" => "https://cdn.olioex.com/uploads/avatar/file/oZq8DF3dzLEi3Fnf4XxMrg/small_image.jpg"
          },
          "roles" => ["Consumer", "Food Waste Hero", "Volunteer", "Administrator"],
          "location" => {"latitude" => 51.7645, "longitude" => -3.79133},
          "rating" => {"rating" => 10, "number" => 15},
          "verifications" => [{"method" => "sms"}, {"method" => "facebook"}]
        },
        "first" => false,
        "last_listed" => "2020-12-12T10:49:18.000Z",
        "pickups" => {"multiple" => false, "users" => [], "items" => 1},
        "veteran_delay" => 0
      },
      {
        "id" => article_id_two,
        "title" => "Epson Stylus Printer Cartridges",
        "description" => "7 X T0714 (yellow)\n4 X T0711 (black)\n1 X E712 (cyan)\n4 X E713 / T0713 (magenta)\n\n",
        "donation_description" => "",
        "collection" => {"id" => 0},
        "section" => "product",
        "location" => {
          "latitude" => 51.764465,
          "longitude" => -3.791336,
          "distance" => 0,
          "town" => "Ystalyfera",
          "country" => "United Kingdom"
        },
        "collection_notes" => "Any time",
        "value" => {"price" => 0, "currency" => "USD", "payment_type" => "no_payment_type"},
        "created_at" => "2020-12-12T10:49:31.000Z",
        "updated_at" => "2020-12-12T10:49:58.000Z",
        "status" => "active",
        "expiry" => "2021-04-09T10:49:56.000Z",
        "reactions" => {"likes" => 0, "by_user" => false, "views" => 32, "impressions" => 3810},
        "is_owner" => true,
        "conversations" => {"linked" => 0, "request_id" => nil},
        "photos" => [
          {
            "uid" => "Y9d--jZv7f0GoLDn3SbH6A",
            "files" => {
              "original" => "https://cdn.olioex.com/uploads/photo/file/Y9d--jZv7f0GoLDn3SbH6A/image.jpg",
              "large" => "https://cdn.olioex.com/uploads/photo/file/Y9d--jZv7f0GoLDn3SbH6A/large_image.jpg",
              "medium" => "https://cdn.olioex.com/uploads/photo/file/Y9d--jZv7f0GoLDn3SbH6A/medium_image.jpg",
              "small" => "https://cdn.olioex.com/uploads/photo/file/Y9d--jZv7f0GoLDn3SbH6A/small_image.jpg"
            },
            "dimensions" => {"width" => 1280, "height" => 960}
          }
        ],
        "images" => [
          {
            "uid" => "Y9d--jZv7f0GoLDn3SbH6A",
            "files" => {
              "original" => "https://cdn.olioex.com/uploads/photo/file/Y9d--jZv7f0GoLDn3SbH6A/image.jpg",
              "large" => "https://cdn.olioex.com/uploads/photo/file/Y9d--jZv7f0GoLDn3SbH6A/large_image.jpg",
              "medium" => "https://cdn.olioex.com/uploads/photo/file/Y9d--jZv7f0GoLDn3SbH6A/medium_image.jpg",
              "small" => "https://cdn.olioex.com/uploads/photo/file/Y9d--jZv7f0GoLDn3SbH6A/small_image.jpg"
            },
            "dimensions" => {"width" => 1280, "height" => 960}
          }
        ],
        "user" => {
          "id" => 8039,
          "first_name" => "Lloyd",
          "current_avatar" => {
            "original" => "https://cdn.olioex.com/uploads/avatar/file/oZq8DF3dzLEi3Fnf4XxMrg/image.jpg",
            "large" => "https://cdn.olioex.com/uploads/avatar/file/oZq8DF3dzLEi3Fnf4XxMrg/large_image.jpg",
            "small" => "https://cdn.olioex.com/uploads/avatar/file/oZq8DF3dzLEi3Fnf4XxMrg/small_image.jpg"
          },
          "roles" => ["Consumer", "Food Waste Hero", "Volunteer", "Administrator"],
          "location" => {"latitude" => 51.7645, "longitude" => -3.79133},
          "rating" => {"rating" => 10, "number" => 15},
          "verifications" => [{"method" => "sms"}, {"method" => "facebook"}]
        },
        "first" => false,
        "last_listed" => "2020-12-12T10:49:40.000Z",
        "pickups" => {"multiple" => false, "users" => [], "items" => 16},
        "veteran_delay" => 0
      }
    ]
  end

  before do
    allow(Net::HTTP).to receive(:get).and_return(articles_json.to_json)
  end

  context "when there are no articles" do
    it "creates two new articles" do
      expect { subject }.to change(Article, :count).by(2)
    end

    it "creates two new articles with correct external ids" do
      Article.destroy_all
      subject
      expect(Article.pluck(:external_id)).to eq(articles_json.pluck("id"))
    end

    it "returns the correct articles array" do
      merged_articles = articles_json.each { |article| article.merge!("liked" => false) }
      expect(subject).to eq(merged_articles)
    end
  end

  context "when there are existing articles but none is persisted" do
    before do
      create(:article, external_id: 3)
    end

    it "creates two new articles" do
      expect { subject }.to change(Article, :count).by(2)
    end

    it "creates two new articles with correct external ids" do
      Article.destroy_all
      subject
      expect(Article.pluck(:external_id)).to eq(articles_json.pluck("id"))
    end

    it "returns the correct articles array" do
      merged_articles = articles_json.each { |article| article.merge!("liked" => false) }
      expect(subject).to eq(merged_articles)
    end
  end

  context "when there are existing articles and there is one already persisted" do
    before do
      create(:article, external_id: article_id_one)
    end

    it "creates two new articles" do
      expect { subject }.to change(Article, :count).by(1)
    end

    it "all articles have correct external ids" do
      Article.destroy_all
      subject
      expect(Article.pluck(:external_id)).to eq(articles_json.pluck("id"))
    end

    it "returns the correct articles array" do
      merged_articles = articles_json.each { |article| article.merge!("liked" => false) }
      expect(subject).to eq(merged_articles)
    end
  end

  context "when there are existing articles but none is new" do
    before do
      create(:article, external_id: article_id_one)
      create(:article, external_id: article_id_two)
    end

    it "creates two new articles" do
      expect { subject }.not_to change(Article, :count)
    end

    it "returns the correct articles array" do
      merged_articles = articles_json.each { |article| article.merge!("liked" => false) }
      expect(subject).to eq(merged_articles)
    end
  end

  context "when there is an issue" do
    before do
      allow(Net::HTTP).to receive(:get).and_raise(StandardError)
    end

    it "runs exception code path" do
      expect(Rails.logger).to receive(:info)
      subject
    end
  end
end
