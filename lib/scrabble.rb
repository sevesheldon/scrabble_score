class String
  define_method(:scrabble) do
    scrab_score = 0
    one_point_letters = ["a", "e", "i", "o", "u", "l", "n", "r", "s", "t"]
    string_split = self.split("")
    string_split.each() do |letter|
      if one_point_letters.include?(letter)
        scrab_score = scrab_score + 1
      end
    end
    scrab_score.to_i()
  end
end
