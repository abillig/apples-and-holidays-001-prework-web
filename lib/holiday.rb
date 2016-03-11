require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above 
  # add the second argument, which is a supply, to BOTH the 
  # Christmas AND the New Year's arrays
  holiday_hash[:winter]. each do |key, val|
    val << supply
  end

end
 

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
   holiday_hash[:spring]. each do |key, val|
    val << supply
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  answer = []
  holiday_hash[:winter].each do |key, val|
    val.each do |val|
      answer << val
    end
  end
  return answer

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  def capitalize(array)
    final = [] 
    array.each do |element|
      full_word = []
      splut = element.split(" ")
splut.each do |word|
  if word == "BBQ"
    full_word << "BBQ"
  else
  full_word<<word.capitalize
end
end 
final<<full_word.join(" ")
end
return final 
end

  def capitalizeunderscore(string)
    words = string.split("_")
    final = []
    words.each do |word|
     final << word.capitalize
end
return final.join(" ")
end


  holiday_hash.each do |key, val|
    puts "#{key.capitalize}:"
    val.each do |key, val|
      puts "  #{capitalizeunderscore(key.to_s)}: #{capitalize(val).join (", ")}"
    end
  end
  
end

def all_holidays_with_bbq(holiday_hash)
  bbq_holidays=[]
  holiday_hash.each do |key, val|
    val.each do |key, val|
      val.each do |element|
      if element == "BBQ"
        bbq_holidays << key
      end
    end
  end
end
return bbq_holidays

  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end







