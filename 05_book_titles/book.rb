class Book

  def initialize name
    little_words = ["the", "a", "an", "and", "or", "nor", "in", "of"]
    name = name.split(" ")
    name.each_with_index do |x, i|
      unless little_words.include? x
        name[i] = x.capitalize
      end
      if i == 0
        name[i] = x.capitalize
      end
      end

    @name = name.join(" ")
    @title = @name
    return @title
    end

    def title
      return @title
    end
end
