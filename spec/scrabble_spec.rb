require('rspec')
require('scrabble')
require('pry')

describe('String#scrabble') do
  it('returns a scrabble score for a letter') do
    expect("a".scrabble()).to(eq(1))
  end
end
