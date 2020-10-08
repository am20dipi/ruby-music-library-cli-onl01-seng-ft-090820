class Song 
  attr_accessor :name
  
  @@all = [] #class variable - a property of a class itself
  
  def self.all #class Reader - exposing thru this method the value of the variable
    @@all 
  end
  
  def initialize(name)
    @name = name
    save
  end
  
  def save 
    @@all << self
  end
  
  def self.destroy_all #helper, erase all of the data 
    @@all.clear
  end
  
  def self.count 
    @@all.size
  end
  
  def self.find_by_name(name) #Class Finder - takes in the argument of a name as a string, iterates over the @@all array
    @@all.detect {|song| song.name == name} # .detect returns the first element of the array for which the following block returns true
  end
  
  #def self.create
  
end