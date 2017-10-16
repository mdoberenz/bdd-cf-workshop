component {
	public Person function init (required string name) {
		variables.name = name;
		variables.tickets = StructNew();
		return this;
	}

	public string function getName() {
		return variables.name;
	}

	public Ticket function createTicket(required numeric number) {
		if( StructKeyExists(variables.tickets, number) ){
			throw(message='Ticket #number# already exists', type="ticketExists", detail="person = #getName()#");
		}
		variables.tickets[number] = new Ticket(this, number);
		return variables.tickets[number];
	}
}