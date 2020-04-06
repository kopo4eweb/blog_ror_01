FactoryBot.define do
    factory :comment do
        author { "Mike" }
        sequence :body do |n|
            "New comment #{n}"
        end
    end
end