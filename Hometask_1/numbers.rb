numbers = [
  "9461055376", "1098029425", "1365826266", "3651652057",
  "6639633927", "9198606875", "3425027805", "9600912575",
  "8826860435", "4244213108", "8930423446", "6975487430",
  "2956968315", "4024720801", "8882048673", "4897211695",
  "6089600553", "4272319905", "4517433227", "5565635133"
]

def first_task(task)

  task_hash  = {}
  task.map do |a|

    key = a
    value = a.split('').max

    fin = { key => value }
    task_hash.merge!(fin)

  end

  task_hash

end

puts "task #1"
puts "-------"
puts first_task(numbers)

def second_task(numbers)

	task_string = ''
	numbers.map do |b|

		task_string += b.split('').max
		task_string += b.split('').min

	end

	task_string

end

puts ''
puts "task #2"
puts "-------"
puts second_task(numbers)

def third_task(numbers)

	a = numbers.sort.reverse

    sum = a[0].to_i + a[1].to_i + a[-1 ].to_i + a[-2].to_i

end

puts ''
puts "task #3"
puts "-------"
puts third_task(numbers)