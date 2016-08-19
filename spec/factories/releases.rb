FactoryGirl.define do
  factory :release do
    version { rand(1..10) }
  end
end
