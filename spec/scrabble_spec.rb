require('rspec')
require('scrabble')
require('pry')

describe('String#scrabble') do
  it('returns a scrabble score for a letter') do
    expect("A".scrabble()).to(eq(1))
  end

  it('returns a scrabble score of 1 for all one-point letters') do
    expect("E".scrabble()).to(eq(1))
  end

  it('returns a scrabble score equal to the sum of all the one-point letters included') do
    expect("AE".scrabble()).to(eq(2))
  end

  it('returns a scrabble score equal to the sum of all the one-point and two-point letters included') do
    expect("DOG".scrabble()).to(eq(5))
  end

  it('returns a scrabble score equal to the sum of all the one-point, two-point and three-point letters included') do
    expect("BLIMP".scrabble()).to(eq(11))
  end

  it('returns a scrabble score equal to the sum of all the one-point, two-point, three-point and four-point letters included') do
    expect("HELP".scrabble()).to(eq(9))
  end

  it('returns a scrabble score equal to the sum of all the one-point, two-point, three-point, four-point and five-point letters included') do
    expect("KELP".scrabble()).to(eq(10))
  end

  it('returns a scrabble score equal to the sum of all the one-point, two-point, three-point, four-point, five-point and eight-point letters included') do
    expect("JACK".scrabble()).to(eq(17))
  end

  it('returns a scrabble score equal to the sum of all the letters included') do
    expect("PIZZA".scrabble()).to(eq(25))
  end

  it('returns a scrabble score regardless of upper or lower casing') do
    expect("PizZa".scrabble()).to(eq(25))
  end
end
