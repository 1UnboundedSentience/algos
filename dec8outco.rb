#bucket is an array of two tuples
class MyHash
  def initialize
    @storage = []
    @buckets = 8
    @size = 0
  end

  def hash(str)
    # Simple hash function to hash a string, based on Dan Bernstein's djb2
    # Input: str - a string that is to be hashed
    # arbitrary large prime number to initialize
    hash = 5381
    # hash(i) = hash(i-1) * 33 + str[i]
    str.split('').each do |char|
        hash = ((hash << 5) + hash) + char.ord
    end
    # Output: integer between 0 and buckets-1 (inclusive)
    return hash % @buckets
  end

  def insert(k,v)
    #if k in @storage handle collisions
    index = hash(k)
    current_bucket = @storage[index]
    p current_bucket
    current_bucket.each_index do |idx|
      if (current_bucket[idx][0] == key)
        current_bucket[idx][1] = value
        return
      end
    end
    current_bucket.push([k,v])
    @size += 1

    # @storage.each_with_index do |tuple, idx|
    #   if tuple[0] == k
    #     #perform hashing function on key
    #     p @storage[idx][1]
    #     @storage[idx][1] = v
    #     @storage[idx]
    #     return nil
    #   end
    # end
    # @size += 1
    # @storage << [k,v]
  end

  def delete(k) # n time, O(1) space
    return 'key not found' if retrieve(k) === undefined
    @storage.each do |tuple|
      @storage.delete(tuple) if tuple[0] == k
    end
  end

  def retrieve(k)
    index = hash(k)
    current_bucket = @storage[index]
    @storage.each do |tuple|
      return tuple[1] if tuple[0] == k
    end
    return nil #returning undefined?
  end

  def resize
    if @storage.count/@buckets > 0.75
      @buckets *= 2
      #reindex everything
    end
  end

end

h1 = MyHash.new()
p h1.hash("hello")
h1.insert("cow", "mammal")
p h1
p h1.retrieve("cow")
h1.insert("cow", "animal")
h1.delete("cow")
p h1