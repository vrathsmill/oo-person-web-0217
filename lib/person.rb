# your code goes here

class Person
  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene

  def initialize(name)
    @hygiene = 8
    @happiness = 8
    @bank_account = 25
    @name = name
  end

def happiness
  @happiness = 10 if @happiness > 10
  @happiness = 0 if @happiness < 0
  @happiness
end

def hygiene
  @hygiene = 10 if @hygiene > 10
  @hygiene = 0 if @hygiene < 0
  @hygiene
end

  def clean?
  hygiene > 7
  end

  def happy?
    happiness > 7
  end

  def get_paid(amount)
    self.bank_account += amount
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -=3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end


  def start_conversation(person, topic)
    case topic
    when "politics"
      self.happiness -= 2
      person.happiness -= 2
        return "blah blah partisan blah lobbyist"
    when "weather"
      self.happiness += 1
      person.happiness += 1
     "blah blah sun blah rain"
   else
    "blah blah blah blah blah"
  end
end

end
