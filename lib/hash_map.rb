class HashMap
  attr_accessor :load_factor, :capacity, :hash_map

  def initialize
    self.hash_map = []
  end

  def hash(key)
    hash_code = 0
    prime_number = 31

    key.each_char { |char| hash_code = prime_number * hash_code + char.ord }

    hash_code
  end

  def set(key, value)
    hash_code = hash(key)
    hash_map[hash_code] = value
  end

  def get(key)
    hash_code = hash(key)
    hash_map[hash_code]
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
