class Transfer
  attr_accessor :status
  attr_reader :sender, :receiver, :amount
  
  def initialize(from, to, amount)
    @sender = from
    @receiver = to
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    @sender.valid? && @receiver.valid?
  end
  
  def execute_transaction
    if self.valid? && @sender.balance > @amount && @status = "pending"
      @sender.balance -= amount
      @receiver.balance += amount
    else
      
  end
  
  def reverse_transfer
    
  end
end
