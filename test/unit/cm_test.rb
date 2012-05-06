require 'test_helper'

class CmTest < ActiveSupport::TestCase
	fixtures :cms
  # test "the truth" do
  #   assert true
  #end

  test "cm attributes must not be empty" do
cm = Cm.new
assert cm.invalid?
assert cm.errors[:title].any?
assert cm.errors[:permalink].any?
assert cm.errors[:body].any?
assert cm.errors[:created_at].any?
assert cm.errors[:updated_at].any?
end
test "cm is not valid without a unique title" do
cm = cm.new(:title => cm(:ruby).title,
:description => "yyy",)
assert !cm.save
assert_equal "has already been taken", cm.errors[:title].join('; ')
end
end
