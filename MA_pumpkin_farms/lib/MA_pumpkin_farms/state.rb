class MAPumpkinFarms::State
  attr_accessor :name
  @@all =[]
  
  def initialize(name)
    @name = name
    save
  end
  
  def self.all
    MAPumpkinFarms::Scraper.scrape_states if @@all.empty?
    @@all
  end
  
  def save
    @@all << self
  end
end