class MAPumpkinFarms::Farm
  attr_accessor :name, :address, :phone, :url, :info
  @@all =[]
  
  def initialize(name=nil, url=nil)
    @name = name
    @url = url
    save
  end
  
  def self.all
    MAPumpkinFarms::Scraper.scrape_farms if @@all.empty?
    @@all
  end
  
  def get_info
    MAPumpkinFarms::Scraper.scrape_info(self) if @info.empty?
    @info
  end
  
  def save
    @@all << self
  end
end