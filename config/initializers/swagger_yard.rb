# frozen_string_literal: true

SwaggerYard.configure do |config|
  config.api_version = "1.0"

  config.title = "Olio Task"
  config.description = "This a task for Olio"

  # where your actual api is hosted from
  config.api_base_path = "http://localhost:3000/"

  # Where to find controllers (can be an array of paths/globs)
  config.controller_path = Rails.root.join("app/controllers/**/*")

  # Where to find models (can be an array)
  config.model_path = Rails.root.join("app/models/**/*")

  # Whether to include controller methods marked as private
  # (either with ruby `private` or YARD `# @visibility private`
  # Default: true
  config.include_private = true
end
