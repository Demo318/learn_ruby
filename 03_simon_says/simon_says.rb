#write your code here
def echo string
  return string
end

def shout string
  return string.upcase
end

def repeat string, int = 0
  if int <= 1
    return string + " " + string
  else
    rpt = int - 1
    add = ""
    rpt.times do
      add = add + " " + string
    end
    return string + add
  end
end

def start_of_word entry, int = 1
  result = Array.new
  entry.each_char.with_index do |chr, i|
    if i < int
      result.push(chr)
    end
  end
  return result.join("")
end

def first_word entry
  entry = entry.split(" ")
  return entry[0]
end
