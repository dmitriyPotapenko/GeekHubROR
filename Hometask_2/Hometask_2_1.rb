# 1

## create an array with 40 elements. each element will be a random date and temperature ("31.01  -7").
## Generate a hash. Key will be a month, value will be average temperature for this month.

arr = []

loop do
  month = rand(1..12)
  if (month == 1) || (month == 3) || (month == 5) || (month == 7) ||
     (month == 8) || (month == 10) || (month == 12)
    day = rand(1..31)
  elsif month == 2
    day = rand(1..29)
  elsif (month == 4) || (month == 6) || (month == 9) || (month == 11)
    day = rand(1..30)
  end

  if (month == 1) || (month == 2) || (month == 12)
    degree = rand(-20..10)
  elsif (month == 3) || (month == 4) || (month == 5) || (month == 6)
    degree = rand(10..25)
  elsif (month == 7) || (month == 8)
    degree = rand(15..40)
  elsif (month == 9) || (month == 10) || (month == 11)
    degree = rand(0..20)
  end

  element = day.to_s + '.' + month.to_s + ' ' + degree.to_s

  arr << element
  break if arr.size == 40
end

puts arr.to_s

def hash_task(task)
  task_hash = {}
  counter = {}
  temperatures = {}

  task.map do |a|
    select_month = a[a.index('.') + 1, a.index(' ') - 2].to_s.delete '.'' '
    temperature = a[a.index('.') + 3, a.index(' ')].to_s.delete '.'' '

    if temperatures.key?(select_month)
      temperatures[select_month] += temperature.to_i
      counter[select_month] += 1
    else
      temperatures[select_month] = temperature.to_i
      counter[select_month] = 1
    end
  end

  temperatures.each do |select_month, value|
    average_temp = value / counter[select_month]

    final = { select_month => average_temp }
    task_hash.merge!(final)
  end
  task_hash
end

puts hash_task(arr)