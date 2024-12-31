class HashMap
  attr_accessor :load_factor, :capacity, :buckets

  def initialize
    self.capacity = 16
    self.buckets = Array.new(capacity, nil)
  end

  def hash(key)
    hash_code = 0
    prime_number = 31

    key.each_char { |char| hash_code = prime_number * hash_code + char.ord }

    hash_code % 16
  end

  def set(key, value)
    hash_code = hash(key)
    buckets[hash_code] = value
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
  end

  def keys
  end

  def values
  end

  def entries
  end
end
