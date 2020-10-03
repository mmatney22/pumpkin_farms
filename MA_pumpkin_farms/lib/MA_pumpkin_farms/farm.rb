class MAPumpkinFarms::Farm
  attr_accessor :name
  @@all =[]
  
  def initialize(name)
    @name = name
    save
  end
  
  def self.all
    MAPumpkinFarms::Scraper.scrape_farms if @@all.empty?
    @@all
  end
  
  def save
    @@all << self
  end
end