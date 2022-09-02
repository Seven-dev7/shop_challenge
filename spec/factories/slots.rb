FactoryBot.define do
  factory :slot do
    start_time { Time.now }
    end_time { Time.now + 60 }
    week_day { 1 }
  end
end
