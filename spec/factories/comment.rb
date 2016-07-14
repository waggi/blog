FactoryGirl.define do
  factory :comment do |f|
    f.commenter {Faker::Name.name}
    f.body {Faker::Lorem.paragraph}
  end
end