class Transfer
  attr_accessor :balance, :status
  attr_reader :sender, :receiver, :amount
  
  def initialize(from, to, amount)
    @sender = from
    @receiver = to
    @status = "pending"
    @amount = amount
  end
end
