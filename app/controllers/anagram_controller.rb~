class AnagramController < ApplicationController
    require 'anagram_manager'

    def index
	if params[:id]
	    @anagram = Anagram.find(params[:id])
	end	  
    end

    def create
	manager = Anagram_manager.new
	anagram = Anagram.create(
		first_sentence: params[:first_sentence], 
		second_sentence: params[:second_sentence], 
		is_anagram: manager.verify_anagram(params[:first_sentence], params[:second_sentence])
	)

    	redirect_to action: "index", id: anagram.id
    end
end
