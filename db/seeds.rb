User.create!({email: "admin@live.com",
              password: "password",
              country: "Fake Country",
              is_admin: true})

Committee.create!({name: "United Nations General Assembly"})
Committee.create!({name: "North Atlantic Treaty Organization"})
Committee.create!({name: "United Nations Security Council"})
Committee.create!({name: "World Health Organization (Novice)"})
Committee.create!({name: "United Nation Economic and Social Council"})
Committee.create!({name: "The African Union"})
Committee.create!({name: "The Council of the European Union"})
Committee.create!({name: "The League of Arab States"})
Committee.create!({name: "The Association of South East Asian Nations"})
Committee.create!({name: "The Council of the Organization of American States"})
Committee.create!({name: "Cabinet of the United States"})
Committee.create!({name: "Cabinet of the Russian Federation"})
Committee.create!({name: "Cabinet of the People’s Republic of China"})
Committee.create!({name: "Cabinet of the United Kingdom of Great Britain and Northern Ireland"})
Committee.create!({name: "General Assembly (2003)"})
Committee.create!({name: "Security Council (2003)"})
Committee.create!({name: "The League of Arab States (2003)"})
Committee.create!({name: "US Senate (2003)"})
Committee.create!({name: "Cabinet of the French Republic (2003)"})
Committee.create!({name: "Cabinet of the United States of America (2003)"})
Committee.create!({name: "Cabinet of Republic of Iraq (2003)"})
Committee.create!({name: "Cabinet of the Islamic Republic of Iran (2003)"})
Committee.create!({name: "Cabinet of Kingdom of Saudi Arabia (2003)"})
Committee.create!({name: "International Press Delegation"})

Committee.all.each do |comm|
  3.times do
    Topic.create!({name: "#{Faker::Hacker.adjective} #{Faker::Hacker.noun} #{Faker::Hacker.ingverb}", committee_id: comm.id})
  end
end
