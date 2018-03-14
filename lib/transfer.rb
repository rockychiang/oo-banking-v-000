class Transfer
  attr_accessor :balance, :status
  attr_reader :name
  
  def initialize(from, to, amount)
    @sender = from
    @receiver = to
    @balance = 1000
    @status = "open"
  end
end
