class TicketMailer < ActionMailer::Base
  default from: "nathalie@nathaliesteinmetz.net"

  def received_ticket(ticket)
    @ticket = ticket
    @url  = "http://#{:host}/ticket/#{ticket.id}"
    mail(to: "helpdesk@nathaliesteinmetz.net",
         subject: "New ticket received: #{ticket.name}")
  end

end
