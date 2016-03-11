
  def capitalize(array)
    final = [] 
    array.each do |element|
      full_word = []
      splut = element.split(" ")
splut.each do |word|
  full_word<<word.capitalize
end 
final<<full_word.join(" ")
end
puts final 
end


capitalize(["gold", "silver sailor"])
