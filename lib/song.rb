class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    obj = Song.new
    @@all << obj
    return obj
  end

  def self.new_by_name(name)
    obj = Song.new
    obj.name = name
    return obj
  end

  def self.create_by_name(name)
    obj = Song.new
    obj.name = name
    @@all << obj
    return obj
  end

  def self.find_by_name(name)
    @@all.detect { |o| o.name == name }
  end

  def self.find_or_create_by_name(name)

  end

end
