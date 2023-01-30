# frozen_string_literal: true

require "rails_helper"

RSpec.describe Article, type: :model do
  it { is_expected.to validate_uniqueness_of(:external_id) }
end
