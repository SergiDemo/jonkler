# frozen_string_literal: true

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.expect_with(:rspec) { |c| c.syntax = :expect }

  config.order = :random

  config.color = true

  config.fail_fast = true

  config.shared_context_metadata_behavior = :apply_to_host_groups

  config.formatter = :documentation
end
