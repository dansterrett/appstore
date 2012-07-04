require 'test_helper'

class MobileAppTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert MobileApp.new.valid?
  end
end
