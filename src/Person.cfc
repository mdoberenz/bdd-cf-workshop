component {
	public Person function init (required string name) {
		variables.name = name;
		return this;
	}

	public string function getName() {
		return variables.name;
	}

	public Ticket function createTicket(required numeric number) {
		if( StructKeyExists(request.tickets, number) ){
			throw(message='Ticket #number# already exists', type="ticketExists", detail="person = #getName()#");
		}
		request.tickets[number] = new Ticket(this, number);
		return request.tickets[number];
	}
}