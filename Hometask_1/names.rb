names = [
  "Stuart Blanda", "Kaden Batz", "Cornell Durgan", "Mrs. Kieran Goldner",
  "Miss Emile Littel", "Carolyne Terry", "Mrs. Ronaldo Buckridge",
  "Cristal Braun", "Dr. Joanne Bartoletti", "Kenton Block", "Jeromy Medhurst",
  "Gussie Daniel V", "Kitty Senger Jr.", "Lexus Gibson", "Kaylah Howell",
  "Maxie Wilderman", "Kayden Mohr", "Devonte Skiles", "Tina Mante", "Heloise Mann"
]

def delete_words(words)

  words.sub!("Mrs. ","")
  words.sub!("Miss ","")
  words.sub!("Dr. ","")
  words.sub!(" V","")
  words.sub!(" Jr.","")

end

def first_task(task)

  task_hash  = {}

  task.map do |a|
    delete_words(a)

    key = a[0, a.index(' ')]
    value = a[a.index(' ') + 1, a.size]

    fin = { key => value }
    task_hash.merge!(fin)

  end

  task_hash

end

puts "task #1"
puts "-------"
puts first_task(names)

def second_task(task)

  task_hash  = {}

  task.map do |b|
    delete_words(b)

    key = b[0]
    value = b[b.index(' ')+2]

    fin = { key => value }
    task_hash.merge!(fin)

  end

  task_hash

end

puts ''
puts "task #2"
puts "-------"
puts second_task(names)

def third_task(task)

  task_array  = []

  task.map do |d|
    delete_words(d)

    task_array.push(d[0],d[d.index(' ')+1])

  end

  task_array.uniq.sort

end

puts ''
puts "task #3"
puts "-------"
puts third_task(names)

def fourth_task(task)  

  task.map do |e|
    rev = e.split(' ')

    if rev[0] == "Mrs." || rev[0] == "Dr." || rev[0] == "Miss"
      first = rev[1]
      rev[1] = rev[2]
      rev[2] = first
    else
      first = rev[0]
      rev[0] = rev[1]
      rev[1] = first
    end
    e = rev.join(' ')
  end
end

puts ''
puts "task #4"
puts "-------"
puts fourth_task(names)