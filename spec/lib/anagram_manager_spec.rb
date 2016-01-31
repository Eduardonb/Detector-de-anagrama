require "spec_helper"
require "anagram_manager"

describe AnagramManager do
    
    it "is an anagram" do
        manager = AnagramManager.new
    
        result = manager.verify_anagram('Pa ta', 'Tapa')
        expect(result).to be true
    end

    it "is not an anagram" do
        manager = AnagramManager.new

        result = manager.verify_anagram('Leopardo', 'Tapa')
        expect(result).to be false
    end

    it "should return an array" do
        manager = AnagramManager.new

        result = manager.pick_up_letters("Pata")
        expect(result).to be_an_instance_of(Array)
    end
end
