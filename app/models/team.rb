class Team

  attr_accessor :name, :motto

  @@all = []

  def initialize(attrs)
    @name = attrs[:name]
    @motto = attrs[:motto]
    save
  end
