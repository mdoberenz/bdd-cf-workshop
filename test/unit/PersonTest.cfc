component displayName="bdd.Person tests" extends="testbox.system.BaseSpec"{

	function shouldCreateNewPerson() test {
		person = new bdd.Person("Bob");
		$assert.isEqual(person.getName(), "Bob");
	}

	function shouldCreateNewTicket() test {
		person = new bdd.Person("Bob");
		ticket = person.createTicket(123);
		$assert.isEqual(ticket.getNumber(), 123);
	}

	function shouldFailOnSuccessiveCreateTicket() test {
		person = new bdd.Person("Bob");
		ticket = person.createTicket(123);
		$assert.throws( function(){ person.createTicket(123); }, 'ticketExists', 'Ticket 123 already exists' );
	}
}

