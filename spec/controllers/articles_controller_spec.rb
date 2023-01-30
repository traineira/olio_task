# frozen_string_literal: true

require "rails_helper"

describe ArticlesController, type: :controller do
  describe "#index" do
    subject { get :index }

    let(:articles_retriever_instance) { instance_double(ArticlesRetriever) }

    before do
      allow(ArticlesRetriever).to receive(:new) { articles_retriever_instance }
    end

    it do
      expect(articles_retriever_instance).to receive(:execute)
      subject
    end
  end

  describe "#update_liked" do
    subject { post :update_liked, params: {external_id:, liked:}, as: :json }

    let(:external_id) { 1 }
    let(:liked) { true }

    before do
      create(:article, external_id:, liked: false)
    end

    it "updates liked attribute" do
      subject
      expect(Article.find_by(external_id:).liked).to be(true)
    end

    context "when liked attribute is the same as persisted Article" do
      let(:liked) { false }

      it "updates liked attribute" do
        expect { subject }.not_to change { Article.find_by(external_id:).liked }
      end
    end
  end
end
