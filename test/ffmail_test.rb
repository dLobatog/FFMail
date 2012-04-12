require 'test_helper'
require 'fixtures/sample_mail'

class FfmailTest < ActiveSupport::TestCase
  test "sample mail has name and email as attributes accessible" do
    sample = SampleMail.new
    sample.name = "User"
    assert_equal "User", sample.name
    sample.email = "user@example.com"
    assert_equal "user@example.com", sample.email
  end

  test "sample mail can clear attributes with _clear prefix" do
    sample = SampleMail.new
    sample.name = "User"
    assert_equal "User", sample.name
    sample.email = "user@example.com"
    assert_equal "user@example.com", sample.email  
    sample.clear_name
    assert_nil sample.name
    sample.clear_email
    assert_nil sample.email
  end

  test "sample mail can ask if an attribute is present or not" do
    sample = SampleMail.new
    assert !sample.name?
    
    sample.name = "User"
    assert sample.name?
    
    assert !sample.email?

    sample.email = ""
    assert !sample.email?

    sample.email = "user@example.com"
    assert sample.email?
  end
  
  
end
