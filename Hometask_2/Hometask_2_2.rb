# 2
## Need to find a count of keys which starts from "yes"

hash = {
  'yes' => 23, 'b' => 'travel', 'yesterday' => 34.5,
  :yesss => :fg, try: 30, key: 'some value',
  'yesterday1' => 34, 'yesteryear' => 2014
}

puts hash.select { |key| key.to_s.start_with?('yes') }.size