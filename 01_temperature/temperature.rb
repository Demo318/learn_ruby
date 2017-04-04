#write your code here
def ftoc temp_f

temp_c = ((((temp_f - 32)* 1.0) * 5.0) / 9.0)
  return temp_c
end

def ctof temp_c

temp_f = ((((temp_c * 1.0) * 9.0) / 5.0) +32)
if temp_f % 1 == 0
  temp_f = temp_f.to_i
  return temp_f
end
