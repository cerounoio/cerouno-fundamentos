class UserMailer < ApplicationMailer
  def contact_email(contents)
    @message  = contents.message
    @name     = "#{contents.first_name} #{contents.last_name}"
    @email    = contents.email
    @whatsapp = contents.whatsapp

    mail(
      to:      '"Jorge Téllez" <jorge@cerouno.io>',
      from:    '"CEROUNO" <contacto@cerouno.io>',
      subject: "CEROUNO: Solicitud de Información"
    )
  end
end
