# your code goes here
require 'pry'
class Person
    @@all = []

    attr_reader :name
    attr_accessor :bank_account

    def initialize name, bank_account = 25, happiness = 8, hygiene = 8
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
        
        @@all << self
        
    end
    
    def happiness
        @happiness
    end
    
    def happiness=(happiness)
        if happiness >= 10
            @happiness = 10
        elsif happiness <= 0
            @happiness = 0
        else 
            @happiness = happiness
        end
    end
    
    def hygiene
        @hygiene
    end
    
    def hygiene=(hygiene)
        if hygiene >= 10
            @hygiene = 10
        elsif hygiene <= 0
            @hygiene = 0
        else 
            @hygiene = hygiene
        end
    end

    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end
    
    def clean?
        if @hygiene > 7
            true
        else
            false
        end
        
    end
    
    def get_paid salary
        @bank_account += salary
        return "all about the benjamins"
    end
    
    def take_bath
        @hygiene += 4
        if @hygiene > 10
            self.hygiene=(hygiene)
        end
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        @hygiene -= 3
        if @hygiene < 0
            self.hygiene=(hygiene)
        end
        @happiness += 2
        if @happiness > 10
            self.happiness=(happiness)
        end
        return "♪ another one bites the dust ♫"
    end

    def call_friend friend_name
        @happiness += 3
        friend_name.happiness += 3
        if @happiness || friend_name.happiness > 10
            self.happiness=(happiness)
        end
        return "Hi #{friend_name.name}! It's #{self.name}. How are you?"
    end

    def start_conversation person, topic_of_conversation
        if topic_of_conversation == "politics"
            person.happiness -= 2
            self.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic_of_conversation == "weather"
            person.happiness += 1
            self.happiness += 1
            return "blah blah sun blah rain"
        else 
            return "blah blah blah blah blah"
        end
    end



end