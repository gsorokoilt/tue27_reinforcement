
feeling = { "happy" => 2, "sad" => 1, "angry" => 2, "afraid" => 1, "calm" => 3 }
feeling_1 = { "happy" => 3, "sad" => 1, "angry" => 1, "afraid" => 1, "calm" => 3 }

class Person

  def initialize(name,emotions)
  @name = name
  @emotions = emotions
  end

  def message
    self.emotions.each do |x,y|       #self pulls emotions from whichever instance is call ing the message function
    if y == 1
        p "I am feeling a low level of #{x}"
    elsif y == 2
      p "I am feeling a medium level of #{x}"
    elsif y ==3
      p "I am feeling a high level of #{x}"
  end
  end
end


def name
  return @name
end

def emotions
  @emotions
end

end

# a = roger---------------------if used, line 13 would be  p Person.new(a,feeling)
roger = Person.new("roger",feeling)
steve = Person.new("steve",feeling_1)

roger.message
