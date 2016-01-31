require "spec_helper"
require "anagram_manager"

describe Anagram_manager do
    
    it "is an anagram" do
        manager = Anagram_manager.new
    
        result = manager.verify_anagram('Pa ta', 'Tapa')
        expect(result).to be true
    end

    it "is not an anagram" do
        manager = Anagram_manager.new

        result = manager.verify_anagram('Leopardo', 'Tapa')
        expect(result).to be false
    end

    it "should return an array" do
        manager = Anagram_manager.new

        result = manager.pick_up_letters("Pata")
        expect(result).to be_an_instance_of(Array)
    end
end
