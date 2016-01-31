class AnagramController < ApplicationController

    def index
	if params[:id]
	    @anagram = Anagram.find(params[:id])
	end	  
    end

    def create
	anagram = Anagram.create(
		first_sentence: params[:first_sentence], 
		second_sentence: params[:second_sentence], 
		is_anagram: verify_anagram(params[:first_sentence], params[:second_sentence])
	)

    	redirect_to action: "index", id: anagram.id
    end

    private

    def verify_anagram(param1, param2)
	first_sentence = pick_up_letters(param1.downcase)
	second_sentence = pick_up_letters(param2.downcase)
	
	first_sentence == second_sentence
    end

    def pick_up_letters(sentence)
	letters = sentence.split(//)
	letters.sort!
	
	letters.compact.reject(&:blank?)
    end
end
