class MessageProcessorService
  include ActiveModel::Validations

  attr_reader :first_name,
              :last_name,
              :email,
              :whatsapp,
              :message

  validates :first_name, presence: true
  validates :last_name,  presence: true
  validates :email,      presence: true
  validates :whatsapp,   presence: true
  validates :message,    presence: true

  def initialize(params = {})
    @first_name = params[:first_name]
    @last_name  = params[:last_name]
    @email      = params[:email]
    @whatsapp   = params[:whatsapp]
    @message    = params[:message]
  end

  def deliver_now
    UserMailer.contact_email(self).deliver_now
  end
end
