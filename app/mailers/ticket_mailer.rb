class TicketMailer < ActionMailer::Base
  default from: "nathalie@nathaliesteinmetz.net"

  def received_new_ticket_email(ticket)
    @user = user
    @url  = 'http://#{:host}/ticket/#{ticket.id}'
    mail(to: helpdesk@nathalie.steinmetz.net,
         subject: 'New ticket received: #{ticket.name}')
  end

end
