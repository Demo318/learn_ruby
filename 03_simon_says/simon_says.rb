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
  start = Array.new entry.split("")
  result = Array.new
  start.each do |x|
    if x < int
      result.push(start[x])
    end
  end
  puts entry
  puts start
  puts result
  return start
end

start_of_word "Bentley"
