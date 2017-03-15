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

  it('returns a scrabble score equal to the sum of all the one-point letters included') do
    expect("ae".scrabble()).to(eq(2))
  end

  it('returns a scrabble score equal to the sum of all the one-point and two-point letters included') do
    expect("dog".scrabble()).to(eq(5))
  end

  it('returns a scrabble score equal to the sum of all the one-point, two-point and three-point letters included') do
    expect("blimp".scrabble()).to(eq(11))
  end

  it('returns a scrabble score equal to the sum of all the one-point, two-point, three-point and four-point letters included') do
    expect("help".scrabble()).to(eq(9))
  end

  it('returns a scrabble score equal to the sum of all the one-point, two-point, three-point, four-point and five-point letters included') do
    expect("kelp".scrabble()).to(eq(10))
  end

  it('returns a scrabble score equal to the sum of all the one-point, two-point, three-point, four-point, five-point and eight-point letters included') do
    expect("jack".scrabble()).to(eq(17))
  end
end
