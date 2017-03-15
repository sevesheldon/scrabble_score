class String
  define_method(:scrabble) do
    scrab_score = 0
    one_point_letters = ["a", "e", "i", "o", "u", "l", "n", "r", "s", "t"]
    two_point_letters = ["d", "g"]
    three_point_letters = ["b", "c", "m", "p"]
    four_point_letters = ["f", "h", "v", "w", "y"]
    five_point_letter = "k"
    eight_point_letters = ["j", "x"]
    string_split = self.split("")
    string_split.each() do |letter|
      if one_point_letters.include?(letter)
        scrab_score = scrab_score + 1
      elsif two_point_letters.include?(letter)
        scrab_score = scrab_score + 2
      elsif three_point_letters.include?(letter)
        scrab_score = scrab_score + 3
      elsif four_point_letters.include?(letter)
        scrab_score = scrab_score + 4
      elsif five_point_letter.include?(letter)
        scrab_score = scrab_score + 5
      elsif eight_point_letters.include?(letter)
        scrab_score = scrab_score + 8  
      end
    end
    scrab_score
  end
end
