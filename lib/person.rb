require 'pry'

class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize name 
        @name = name 
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end 

    def happiness= new_happiness
        @happiness = new_happiness
        if @happiness > 10
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        else 
            @happiness
        end 
    end 

    def hygiene= new_hygiene
        @hygiene = new_hygiene
        if @hygiene > 10
            @hygiene = 10
        elsif @hygiene < 0
            @hygiene = 0
        else  
            @hygiene
        end 
    end 

    def happy?
        self.happiness > 7
    end 

    def clean?
        self.hygiene > 7
    end 

    def get_paid salary
        self.bank_account += salary 
        "all about the benjamins"
    end 

    def take_bath
        self.hygiene=((self.hygiene + 4))
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end 

    def work_out
        self.happiness=((self.happiness + 2))
        self.hygiene=((self.hygiene - 3))
        "♪ another one bites the dust ♫"
    end 

    def call_friend friend 
        self.mutual_happiness_change(friend, 3)
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end 

    def mutual_happiness_change friend, amount
        [self, friend].map do |person|
            person.happiness=((person.happiness + amount))
        end 
    end 

    def start_conversation friend, topic
        case topic
        when "politics"
            self.mutual_happiness_change(friend, -2)
            "blah blah partisan blah lobbyist"
        when "weather"
            self.mutual_happiness_change(friend, 1)
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end 
    end 
end 