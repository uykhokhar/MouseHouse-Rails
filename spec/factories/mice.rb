# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :mouse do
    strain "MyString"
    ear_tag "MyString"
    gender "MyString"
    genotype "MyString"
    date_of_birth "2012-04-01"
    litter_id 1
    cage_id 1
  end
end
