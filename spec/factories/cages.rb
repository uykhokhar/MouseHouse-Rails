# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :cage do
    label "MyString"
    protocol_id 1
    mouse_rack_id 1
    row 1
    column 1
    user_id 1
    created_at "2012-04-01 13:10:09"
    created_by 1
    modified_on "2012-04-01 13:10:09"
    bodified_by 1
  end
end
