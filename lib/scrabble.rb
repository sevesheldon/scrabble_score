class String
  define_method(:scrabble) do
    scrab_score = 0
    one_point_letters = ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"]
    two_point_letters = ["D", "G"]
    three_point_letters = ["B", "C", "M", "P"]
    four_point_letters = ["F", "H", "V", "W", "Y"]
    five_point_letter = "K"
    eight_point_letters = ["J", "X"]
    ten_point_letters = ["Q", "Z"]
    string_to_upcase = self.upcase()
    string_split = string_to_upcase.split("")
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
      elsif ten_point_letters.include?(letter)
        scrab_score = scrab_score + 10
      end
    end
    scrab_score
  end
end
