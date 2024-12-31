require_relative 'hash_map'

test = HashMap.new

test.set('apple', 'red')
test.set('banana', 'yellow')
test.set('carrot', 'orange')
test.set('dog', 'brown')
test.set('elephant', 'gray')
test.set('frog', 'green')
test.set('grape', 'purple')
test.set('hat', 'black')
test.set('ice cream', 'white')
test.set('jacket', 'blue')
test.set('kite', 'pink')
test.set('lion', 'golden')
test.set('human', 'steven')
test.set('food', 'good')
test.set('drink', 'water')
test.set('wowow', 'wewewe')

puts test.values
puts "Capacity: #{test.capacity}"
puts "Length: #{test.length}"

test.set('abcd', '1234')
test.set('ghjk', '1234')
test.set('tyui', '1234')
test.set('zxcv', '1234')
test.set('asdf', '1234')
test.set('qwer', '1234')

puts "Capacity: #{test.capacity}"
puts "Length: #{test.length}"

puts test.keys
puts test.values
puts test.entries

# Unintentionally correct
puts "Get human: #{test.get('human')}"

puts "Does it have elephant? #{test.has?('elephant')}"
puts "Does it have quail? #{test.has?('quail')}"

puts '-- Clear --'
test.clear

puts "Capacity: #{test.capacity}"
puts "Length: #{test.length}"
