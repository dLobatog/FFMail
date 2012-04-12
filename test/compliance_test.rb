require 'test_helper'
require 'fixtures/sample_mail'

class ComplianceTest < ActiveSupport::TestCase
  # Including this, it generates tests for checking compliance with ActiveModel API
  include ActiveModel::Lint::Tests

  def setup
    @model = SampleMail.new 
  end

  test "model_name exposes human and singular" do
    assert_equal "sample_mail", model.class.model_name.singular
    assert_equal "Sample mail", model.class.model_name.human
  end

  test "model_name.human uses I18n internationalization" do
    begin
      I18n.backend.store_translations :en,
        :activemodel => { :models => { :sample_mail => "My Sample Mail"} }
    ensure
      I18n.reload!
    end
  end
end
