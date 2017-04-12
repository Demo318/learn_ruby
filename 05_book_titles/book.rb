
class Book



  def title=(string)
    little_words = ["the", "a", "an", "and", "or", "nor", "in", "of"]
    string = string.split(" ")
    string.each_with_index do |x, i|
      unless little_words.include? x
        string[i] = x.capitalize
      end
      if i == 0
        string[i] = x.capitalize
      end
      end
    @title = string.join(" ")
    end

    def title
      return @title
    end
end
