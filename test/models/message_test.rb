require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  test 'should accept valid attributes' do
  	msg = Message.new
  	refute msg.valid?
  end
end
