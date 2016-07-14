FactoryGirl.define do
  factory :article do |f|
    f.title {Faker::Book.title}
    f.text {Faker::Lorem.paragraph}
  end
end