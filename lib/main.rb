require_relative 'hash_map'

test = HashMap.new

test.set('Apple', 'Red')
puts test.has?('Apple')
puts test.has?('Orange')
