# frozen_string_literal: true

FactoryBot.define do
  factory :article do
    external_id { 1 }
    liked { false }
  end
end
