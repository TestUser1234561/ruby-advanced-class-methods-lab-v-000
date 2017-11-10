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

end
