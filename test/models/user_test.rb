require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "create habtm" do
    user = User.create name: "test"
    user.transacts.create name: "transact"
    user.reload
    assert user.transacts.any?, "no transacts added"
  end

  test "build/save habtm" do
    user = User.create name: "test"
    transact = user.transacts.build name: "transact"
    transact.save
    user.reload
    assert user.transacts.any?, "no transacts added"
  end

  test "build/save habtm with manual user added" do
    user = User.create name: "test"
    transact = user.transacts.build name: "transact", users: [user]
    assert transact.new_record?, "assert transact still new"
    transact.save
    user.reload
    assert user.transacts.any?, "no transacts added"
  end
  # test "the truth" do
  #   assert true
  # end
end
