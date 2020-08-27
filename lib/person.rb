# your code goes here
#- get paid/receive payments - take a bath - call a friend - start a conversation 
#- state if they are happy and/or clean
require 'pry'
class Person

    attr_reader :name, :bank_account, :happiness, :hygiene
    attr_writer :bank_account

    @@min_points = 0
    @@max_points = 10

    def initialize (name)

        @name = name 
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
        # @@min_points = 0
        # @@max_points = 10

    end

    def happiness=(happiness)
        @happiness = happiness.clamp(@@min_points, @@max_points)
        return @happiness
    end

    def hygiene=(hygiene)

        @hygiene = hygiene.clamp(@@min_points, @@max_points)
        return @hygiene
        
    end

    def get_paid(salary_ammt)

        self.bank_account += salary_ammt
        return "all about the benjamins"


    end

    def take_bath

        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"


    end

    def work_out

        self.happiness += 2
        self.hygiene -= 3

        return "♪ another one bites the dust ♫"

    end

    def call_friend(person)
        
        person.happiness += 3
        self.happiness += 3
        return "Hi #{person.name}! It's #{self.name}. How are you?"


    end

    def start_conversation(person, topic)

        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            person.happiness += 1
            return 'blah blah sun blah rain'
        else 
            return "blah blah blah blah blah"
        end

    end

    def happy?

        self.check(@happiness, 7)

    end

    def clean?

        self.check(@hygiene, 7)


    end

    def check(param, thresh)

        if param > thresh
            return true
        else 
            return false 
        end

    end



end


bob = Person.new("bob")

