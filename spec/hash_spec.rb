require('rspec')
require('hash')
require('pry')

describe(MyHash) do
  describe("#myFetch") do
    it("retrieves a stored value by its key.") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      expect(test_hash.myFetch("kitten")).to(eq("cute"))
    end
  end

  describe("#myFetch") do
    it("retrieves a second stored value by its key.") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      test_hash.myStore("dog", "smart")
      expect(test_hash.myFetch("dog")).to(eq("smart"))
    end
  end

  describe("#myFetch") do
    it("retrieves a second stored value by its key.") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      test_hash.myStore("dog", "smart")
      test_hash.myStore("fish", "swim")
      expect(test_hash.myFetch("dog")).to(eq("smart"))
    end
  end

  describe('#has_key?') do
    it("determines whether a hash contains a given key.") do
      test_hash = MyHash.new()
      test_hash.myStore("bird", "fly")
      expect(test_hash.has_key?("bird")).to(eq(true))
    end
  end

  describe('#length') do
    it("determines the length of a given hash.") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      test_hash.myStore("dog", "smart")
      test_hash.myStore("fish", "swim")
      expect(test_hash.length()).to(eq(3))
    end
  end

  describe('#key') do
    it("returns the value of the key at a given index.") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      test_hash.myStore("dog", "smart")
      test_hash.myStore("fish", "swim")
      expect(test_hash.key(0)).to(eq("kitten"))
    end
  end

  describe('#value') do
    it("returns the value of the value at a given index.") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      test_hash.myStore("dog", "smart")
      test_hash.myStore("fish", "swim")
      expect(test_hash.value(2)).to(eq("swim"))
    end
  end

  describe('#merge') do
    it("merges one hash into another.") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      test_hash2 = MyHash.new()
      test_hash2.myStore("bird", "fly")
      expect(test_hash.merge(test_hash2)).to(eq(["cute", "fly"]))
      expect(test_hash.key(0)).to(eq("kitten"))
      expect(test_hash.key(1)).to(eq("bird"))
      expect(test_hash.value(0)).to(eq("cute"))
      expect(test_hash.value(1)).to(eq("fly"))
    end
  end

  describe('#merge') do
    it("merges one hash into another.") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      test_hash.myStore("dog", "smart")
      test_hash2 = MyHash.new()
      test_hash2.myStore("bird", "fly")
      test_hash2.myStore("fish", "swim")
      expect(test_hash.merge(test_hash2)).to(eq(["cute", "smart", "fly", "swim"]))
      expect(test_hash.key(2)).to(eq("bird"))
      expect(test_hash.key(3)).to(eq("fish"))
      expect(test_hash.value(2)).to(eq("fly"))
      expect(test_hash.value(3)).to(eq("swim"))
    end
  end
end
