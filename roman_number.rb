def to_roman(num, options = {})
  new_roman_number = {
    1000 => "M",  
     900 => "CM",  
     500 => "D",  
     400 => "CD",
     100 => "C",  
      90 => "XC",  
      50 => "L",  
      40 => "XL",  
      10 => "X",  
        9 => "IX",  
        5 => "V",  
        4 => "IV",  
        1 => "I"  
  }
  
  roman_number = {
    1000 => "M",  
     500 => "D",  
     100 => "C",  
      50 => "L",  
      10 => "X",  
        5 => "V",  
        1 => "I"  
  }

  result = ""
  if options.has_value?(true)
    new_roman_number.each do |arab, roman|
#       result << roman * (num/arab)
#       num = num % arab
    division, num = num.divmod(arab)
    result << roman * division
    end
  else
    roman_number.each do |arab, roman|
#       result << roman * (num/arab)
#       num = num % arab
    division, num = num.divmod(arab)
    result << roman * division
    end
  end
  result
end

p to_roman(2900, {modern: true})
