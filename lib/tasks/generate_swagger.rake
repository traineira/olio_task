# frozen_string_literal: true

namespace :generate_swagger do
  desc "Generates Swagger Specification"
  task run: :environment do
    # Register the yard tags
    SwaggerYard.register_custom_yard_tags!

    spec = SwaggerYard::OpenAPI.new
    # Generate JSON
    File.open("openapi.json", "w") { |f| f << JSON.pretty_generate(spec.to_h) }
  end
end
