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
    if @status == "pending" 
      if self.valid? && @sender.balance > @amount
        @sender.balance -= amount
        @receiver.balance += amount
        self.status = "complete"
      else
        "Transaction rejected. Please check your account balance."
        self.status = "rejected"
      end
    end
  end
  
  def reverse_transfer
    
  end
end
