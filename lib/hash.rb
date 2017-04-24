class MyHash
  define_method(:initialize) do
    @key_array = []
    @value_array = []
  end

  define_method(:myStore) do |key, value|
    if @key_array.include?(key)
      index = @key_array.find_index(key)
      @value_array[index] = value
    else
      @key_array.push(key)
      @value_array.push(value)
    end
  end


  define_method(:myFetch) do |key|
    index = @key_array.find_index(key)
    @value_array[index]
  end

  define_method(:has_key?) do |key|
    @key_array.include?(key)
  end

  define_method(:key) do |number|
    @key_array[number]
  end

  define_method(:value) do |number|
    @value_array[number]
  end

  define_method(:length) do
    @key_array.length()
  end

  define_method(:merge) do |other_hash|
    index = other_hash.length()
    index.times() do |time|
      if @key_array.include?(other_hash.key(time))
        @value_array[time] = other_hash.value(time)
      else
        @key_array.push(other_hash.key(time))
        @value_array.push(other_hash.value(time))
      end

    end
    @value_array
  end

end
