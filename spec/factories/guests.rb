FactoryBot.define do
  factory :guest do
    nickname              {Faker::Name.intials(number:2)}
    last_name             {gimei.last.kanji}
    first_name            {gimei.first.kanji}
    email                 {Faker::Internet.free_email}
    password              {'test0000'}
    confirmation_password {password}
    sex_id                {Faker::Number.between(from: 2, to: 4)}
    personality_id        {Faker::Number.between(from: 2, to: 11)}
    postal_code           {123-4567}
    prefecuture_id        {Faker::Number.between(from: 2, to: 48)}
    town                  {"〇〇市"}
    address               {"〇〇町１−１"}
    building              {"〇〇ハイツ"}
    job_id                {Faker::Number.between(from: 2, to: 10)}
    introduction          {Faker::Lorem.paragraph}
    request               {Faker::Lorem.paragraph}
  end
end
