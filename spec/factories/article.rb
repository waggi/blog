FactoryGirl.define do
  factory :article do |f|
    f.id 1
    f.title {Faker::Book.title}
    f.text {Faker::Lorem.paragraph}
  end
end