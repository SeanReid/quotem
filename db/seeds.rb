Quote.destroy_all

100.times do |quote|
  Quote.create! message: Faker::Company.catch_phrase
end
