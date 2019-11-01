class Pokemon

<<<<<<< HEAD
  attr_accessor :id, :name, :type, :db

  def initialize(id:, name:, type:, db:)
=======
  attr_accessor id:, name:, type:, db:)

  def initialize(pokemon)
>>>>>>> e5079f983132683a72fd5e14e8fe42dfe5fbcebc
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end

  def self.find(id, db)
<<<<<<< HEAD
    found_pokemon = db.execute("SELECT * FROM pokemon WHERE id = ?;", id).flatten
=======
    found_pokemon = db.execute("SELECT * FROM pokemon WHERE id = ?", id).flatten
>>>>>>> e5079f983132683a72fd5e14e8fe42dfe5fbcebc
    Pokemon.new(id: found_pokemon[0], name: found_pokemon[1], type: found_pokemon[2], db: db)
  end
end
