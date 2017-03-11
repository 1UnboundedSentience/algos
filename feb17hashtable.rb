class HashTable
  def initialize
    @buckets = []
    @storage = []
  end

  def insert(key, value)
    index = self.hash
    if @storage[index] == null
      @storage[index] = [[key,value]] #a tuple inside a bucket
    end
    the_bucket = @storage[index]
    for bucket in @buckets
      if bucket[0] == key
        bucket[1] = value
        return
      end
    end
    the_bucket.push([key, value])
    size+=1
  end

  def delete(key)
    if @storage[key]
    end
  end

  def buckets()

  end
  #returns a key, where key-value pair is stored
  def hash(str)
    return djb2(str)
  end

  def djb2(str)
    hash = 5381
    str.each_byte do |b|
      hash = (((hash << 5) + hash) + b) % (2 ** 32)
    end
    hash
  end
end

sample_hash = HashTable.new
p sample_hash.hash("Obama")

p sample_hash.insert("how are you", "im fine")