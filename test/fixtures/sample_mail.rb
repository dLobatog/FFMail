class SampleMail < Ffmail::Base
  attributes :name, :email, :nickname
  validates  :nickname, :absence => true
  
  def headers
    { :to => "recipient@example.com", :from => self.email }
  end

  before_deliver do
    callbacks << :before
  end

  after_deliver do
    callbacks << :after
  end

  def callbacks
    @callbacks ||= []
  end

end
