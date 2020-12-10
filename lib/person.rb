class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def clean?
    self.hygiene > 7
  end

  def happy?
    self.happiness > 7
  end

  def happiness=(smiles)
    @happiness = smiles.clamp(0,10)
  end

  def hygiene=(hygiene)
    @hygiene = hygiene.clamp(0,10)
  end






  def get_paid(salary)
    @bank_account = @bank_account + salary
    return "all about the benjamins"
  end

  def take_bath
    self.hygiene = self.hygiene + 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness = self.happiness + 2
    self.hygiene = self.hygiene - 3
    return "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness = self.happiness + 3
    friend.happiness = friend.happiness + 3
    return "Hi #{friend.name}! It\'s #{@name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness = self.happiness - 2
      person.happiness = person.happiness - 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness = self.happiness + 1
      person.happiness = person.happiness + 1
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end





















end
