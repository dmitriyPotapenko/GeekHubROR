emails = [
  'lou.hand@mohr.name', 'sigmund@schamberger.org', 'clement@kreigerbeer.co',
  'marcus_strosin@nienow.org',
  'levi.kuhn@tremblay.info', 'arlo@blickgrant.name', 'jonathon@rath.co',
  'kailee.olson@quigley.org', 'alaina@renner.net', 'dylan@mclaughlin.net',
  'luna_hyatt@ritchiecronin.name', 'amie_blick@kiehn.info', 'carolina@bechtelargleichner.name',
  'saul_heaney@heathcote.com', 'dell_tromp@kuvalisfunk.io', 'lexie.hyatt@okuneva.com',
  'marquise@oconnerbailey.name', 'adah@hauckspencer.info', 'gilberto@cronin.name',
  'dock.braun@bins.com'
]

ages = [
  30, 14, 30, 27, 23, 17, 25, 22, 24, 13, 27,
  15, 22, 13, 19, 20, 16, 10, 21, 25
]

names = %w[
  Michel Reagan Annabelle Chanelle Jennyfer Adonis
  Vidal Lera Aurore Garrett Vergie Lauryn Paxton
  Osborne Clinton Karson Ellie Hermann Else Otilia
]

users = {}

# 1

# Create a hash "users"
## Key will be an email
## Value will be an array with age and name

array = ages.zip(names)
users = emails.zip(array).to_h
puts "Task #1 \n\n"
puts users
puts "\n\n"
# 2

# Output a "users" hash who over 19 years old

puts "Task #2 \n\n"
puts users.select { |_key, value| value[0] >= 19 }
puts "\n\n"
# 3

# Output a "users" hash sort order name

puts "Task #3 \n\n"
puts users.sort_by { |_key, value| value[1] }.to_h
puts "\n\n"

# 4

# Output an array with mail domains
## Example ["marcus_strosin@nienow.org"] => ["nienow.org"]

puts "Task #4 \n\n"
puts emails.map { |domain| domain.split('@')[1] }