class BankAccount
  attr_accessor
  attr_reader :name
  
  def initialize(name)
    @name = name
    @status = "open"
  end
end
