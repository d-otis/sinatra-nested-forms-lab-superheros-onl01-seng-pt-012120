class Hero

  attr_accessor :name, :power, :bio

  def initialize(attrs)
    @name = attrs[:name]
    @power = attrs[:power]
    @bio = attrs[:bio]
  end

  def save
    self.class.all << self
  end

  def self.all
    @@all
  end

end
