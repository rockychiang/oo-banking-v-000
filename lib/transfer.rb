class Transfer
  attr_accessor :balance, :status
  attr_reader :sender, :receiver
  
  def initialize(from, to, amount)
    @sender = from
    @receiver = to
    @status = "open"
  end
end
