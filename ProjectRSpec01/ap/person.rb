class Person
  # Constructor
  def initialize(name)

  end

  # Redefinición del método para enviar nil
  # en caso de que el nombre este vacio
  def self.new(name)
    return nil if name.empty?
    super
  end

end