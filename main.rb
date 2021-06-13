# Soluation 1
def aba_translate(word)
  ans = []
  f_word = word.split(" ")
  f_word.each do |b|
    s_word = b.split("")
    newword = ""
    s_word.each do |a|
      if a == "a" || a == 'e' || a == "i" || a == "o" || a == "u" ||
        a == "A" || a == 'E' || a == "I" || a == "O" || a == "U"
        newword += a + "b" + a.downcase
      else
        newword += a
      end
    end
    ans << newword
  end
  ans.join(" ")
end

# Soluation 2
# def aba_translate(word)
#   vowels = "aeiouAEIOU"
#   ans = []
#   f_word = word.split(" ")
#   f_word.each do |b|
#     newword = ""
#     b.each_char do |a|
#       if vowels.include?(a)
#         newword += a + "b" + a.downcase
#       else
#         newword += a
#       end
#     end
#     ans << newword
#   end
#   ans.join(" ")
# end

print aba_translate("Cats and dogs") #=> “Cabats aband dobogs”
puts
print aba_translate("Everyone can code") #=> “Ebeveberyobonebe caban cobodebe”
puts
print aba_translate("Africa is Africa in German") #=> “Abafribicaba ibis Abafribicaba ibin Gebermaban”