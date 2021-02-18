def ceasars_cypher(string,shift_factor)
    alphabet=('a'..'z').to_a
    new_word= string.gsub(/[a-zA-Z]/) do |letter|
        new_array= alphabet.map do |a_letter|
                    if letter == a_letter || letter == a_letter.upcase
                     alphabet_index= alphabet.find_index(a_letter)
                     shifted= alphabet_index.to_i + shift_factor
                     alph_shifted= alphabet[shifted]
                        if letter == a_letter.upcase
                            alph_shifted.upcase
                        
                        else
                        alph_shifted
                        end
                     end
        end  
        single_array= new_array.select {|value| value.is_a?(String)}
        single_array[0]
    end
   puts new_word  
end

ceasars_cypher("This is SOOOO FUN!",3)