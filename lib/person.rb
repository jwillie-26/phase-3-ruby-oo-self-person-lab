# your code goes here
require "pry"
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def hygiene= hygiene
        if hygiene >= 0 && hygiene <= 10
            @hygiene = hygiene
        elsif hygiene < 0
            @hygiene = 0
        elsif hygiene > 10
            @hygiene = 10
        else
            hygiene
        end
    end

    def happiness= (happiness)
        if happiness >= 0 && happiness <= 10
            @happiness = happiness
        elsif happiness < 0
            @happiness = 0
        elsif happiness > 10
            @happiness = 10
        else
            happiness
        end
    end

    def clean?
        self.hygiene > 7 ? true : false
    end

    def happy?
        self.happiness > 7 ? true : false
    end

    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend_inst = Person.new(friend)
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
       if topic == "politics"
        self.happiness -= 2
        friend_inst = Person.new(friend)
        friend.happiness -= 2
        "blah blah partisan blah lobbyist"
       elsif topic == "weather"
        self.happiness += 1
        friend_inst = Person.new(friend)
        friend.happiness += 1
        "blah blah sun blah rain"
       else
        "blah blah blah blah blah"
       end
    end
end