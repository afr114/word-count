require('rspec')
require('./lib/word_count.rb')

  describe('String#word_count') do
    it('it takes a string and converts it into downcase') do
      expect(("This is What is Up").word_count()).to(eq("this is what is up"))
    end

    it('it takes a string with \'s\ and converts it into is') do
      expect(("This is what's up").word_count()).to(eq("this is what is up"))
    end

    it('it takes a string and removes the following: special characters \!?.,\\') do
      expect(("This, is what's up?!").word_count()).to(eq("this is what is up"))
    end

  end
