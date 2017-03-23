require('rspec')
require('word_count')
require('pry')

  describe('String#word_count') do

    it("count") do
      expect(("i am ian i like football").word_count('i')).to eq(2)
    end

    it("count") do
      expect(("i am ian i like football").word_count('ian')).to eq(1)
    end

    it("count") do
      expect(("I am ian i like football").word_count('i')).to eq(2)
    end

    it("count") do
      expect(("If Peter Piper picked a peck of pickled peppers, where’s the peck of pickled peppers Peter Piper picked?").word_count('peck')).to eq(2)
    end

  end
