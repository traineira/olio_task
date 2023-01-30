# frozen_string_literal: true

# @model
#
# @property id(required) [integer] the identifier for the article
# @property external_id [integer] the external indentifier for the article. It must be unique
# @property liked [boolean] the boolean representing if the article is liked
#
class Article < ApplicationRecord
  validates :external_id, uniqueness: true
end
