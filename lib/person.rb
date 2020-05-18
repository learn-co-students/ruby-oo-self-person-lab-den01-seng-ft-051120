# your code goes here
require 'pry'

class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    @@all = []

    def self.all
        @@all
    end

    def initialize name, bank_account = 25, happiness = 8, hygiene = 8
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene

        @@all << self
    end

    def happiness= n
        if n >= 0 && n <= 10
            @happiness = n
        elsif n > 10
            @happiness = 10
        elsif n < 0
            @happiness = 0
        end
    end

    def hygiene= n
        if n >= 0 && n <= 10
            @hygiene = n
        elsif n > 10
            @hygiene = 10
        elsif n < 0
            @hygiene = 0
        end
    end

    def happy?
        self.happiness > 7 ? true : false
    end
    
    def clean?
        self.hygiene > 7 ? true : false
    end

    def get_paid salary
        self.bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene= @hygiene + 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness= @happiness + 2
        self.hygiene= @hygiene - 3
        "♪ another one bites the dust ♫"
    end

    def call_friend friend
        self.happiness =  @happiness + 3
        friend.happiness = friend.happiness + 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    
    def start_conversation friend, topic
        if topic == "politics"
            self.happiness =  @happiness - 2
            friend.happiness = friend.happiness - 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness =  @happiness + 1
            friend.happiness = friend.happiness + 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

end

#binding.pry
