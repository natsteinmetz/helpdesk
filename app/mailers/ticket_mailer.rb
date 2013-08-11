class TicketMailer < ActionMailer::Base
  default from: "nathalie@nathaliesteinmetz.net"

  def received_ticket(ticket)
    @ticket = ticket
    @url  = ticket_url(@ticket)
    mail(to: "helpdesk@nathaliesteinmetz.net",
         return_path: "e0af7242b75046e21a9eb0e08d08c092+#{ticket.id}@inbound.postmarkapp.com"
         subject: "New ticket received: #{ticket.name}")
  end

end
