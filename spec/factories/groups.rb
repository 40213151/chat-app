FactoryBot.define do
  factory :group do
    name {Faker::Team.name}
    trait :invalid do
      name {nil}
    end
  end
  factory :test, class: Group do
    name {"test"}
  end
  factory :test2, class: Group do
    name {"test2"}
  end
end
