class Waiter
  attr_accessor :name, :years
  
  @@all = []
  
  def initialize(name, years)
    @name = name
    @years = years
    @@all.push(self)
  end
  
  def new_meal(customer, total, tip = 0)
    Meal.new(self, customer, total, tip)
  end
  
  def meals
      Meal.all.select do |meals|
        meal.waiter == self
  end
  
  def best_tipper
    
  end
 
  def self.all
    @@all
  end
  
end