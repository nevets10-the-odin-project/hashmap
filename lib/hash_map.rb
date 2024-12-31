require_relative 'linked_list'

class HashMap
  attr_accessor :load_factor, :capacity, :buckets

  def initialize
    self.capacity = 16
    self.load_factor = 0.75
    self.buckets = Array.new(capacity, nil)
  end

  def hash(key)
    hash_code = 0
    prime_number = 31

    key.each_char { |char| hash_code = prime_number * hash_code + char.ord }

    hash_code %= 16

    raise IndexError if hash_code.negative? || hash_code >= buckets.length

    hash_code
  end

  def set(key, value)
    hash_code = hash(key)
    list = buckets[hash_code] || LinkedList.new
    list.append(value)
    buckets[hash_code] = list
  end

  def get(key)
    hash_code = hash(key)
    buckets[hash_code]
  end

  def has?(key)
    val = get(key)
    val ? true : false
  end

  def remove(key)
    return unless has?(key)

    val = get(key)
    set(key, nil)
    val
  end

  def length
    count = 0
    buckets.each do |val|
      count += 1 if val
    end
    count
  end

  def clear
    self.buckets = Array.new(capacity, nil)
  end

  def keys
    key_list = []
    buckets.each_with_index do |val, i|
      key_list << i if val
    end
    key_list
  end

  def values
    vals = []
    buckets.each do |val|
      vals << val if val
    end
    vals
  end

  def entries
    entry_list = []
    buckets.each_with_index do |val, i|
      entry_list << [i, val] if val
    end
    entry_list
  end
end
