require('rspec')
require('scrabble')
require('pry')

describe('String#scrabble') do
  it('returns a scrabble score for a letter') do
    expect("a".scrabble()).to(eq(1))
  end

  it('returns a scrabble score of 1 for all one-point letters') do
    expect("e".scrabble()).to(eq(1))
  end

end
