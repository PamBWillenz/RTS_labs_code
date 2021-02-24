# 2 Rotate the characters in a string by a 
# given input and have the overflow appear at the beginning, 
# e.g. “MyString” rotated by 2 is “ngMyStri”.

def rotate_letters(str,n)
  letters = ("MyString")
  letters_rot = letters.chars.rotate(-n).join
  str.tr(letters, letters_rot)
end

p rotate_letters("MyString", 2)
# => "ngMyStri"

