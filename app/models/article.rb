# frozen_string_literal: true

class Article < ApplicationRecord
  validates :external_id, uniqueness: true
end
