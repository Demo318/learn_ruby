#write your code here
#rules for Pig Latin
#if a word begins with a vowel sound, add "ay" sound to the end
#If a word begins with a consonant sound, move it to the end of the word and add "ay" sound tot eh end of the word.

def translate entry
  final = ""
  vowel_sounds = ["a","e","i","o","u"]
  spec_consonant = ["qu"]
  to_translate = Array.new
  if entry.include? " "
    to_translate = entry.split(" ")
  else
    to_translate.push(entry)
  end
  to_translate.each.with_index do |x, i|
  if vowel_sounds.include? x[0]
    puts "there's a vowel"
    to_translate[i] = to_translate[i] + "ay"
  else
    quick_arr = x.split("")
    cons_arr = Array.new
    quick_arr.each.with_index do |y, j|
      if quick_arr[j - 1] + y == "qu"
        cons_arr.push(y)
      end
        if j == 0
          cons_arr.push(y)
        else
          unless vowel_sounds.include? quick_arr[0..j-1]
            unless vowel_sounds.include? y
            cons_arr.push(y)
          end
          end
        end
        if vowel_sounds.include? y
          break
        end
    end
    if cons_arr.length == 1
      quick_arr.shift
    else
    (cons_arr.length).times do
      quick_arr.shift
    end
  end
    quick_arr.push(cons_arr)
    to_translate[i] = quick_arr.join("") + "ay"
    end
  end
  final = to_translate.join(" ")
  return final
end

translate "cherry"
