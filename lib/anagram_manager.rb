class Anagram_manager

    def verify_anagram(param1, param2)
	first_sentence = pick_up_letters(param1.downcase)
	second_sentence = pick_up_letters(param2.downcase)
	
	first_sentence == second_sentence
    end

    def pick_up_letters(sentence)
	letters = sentence.split(//)
	letters.sort!
	
	letters.reject { |e| e == ' '}
    end
end


