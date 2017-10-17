component displayName="bdd.Person tests" extends="testbox.system.BaseSpec"{

	function shouldCreateNewPerson() test {
		person = new bdd.Person("Bob");
		$assert.isEqual(person.getName(), "Bob");
	}

	function shouldCreateNewTicket() test {
		person = new bdd.Person("Bob");
		ticket = person.createTicket(121);
		$assert.isEqual(ticket.getNumber(), 121);
	}

	function shouldFailOnSuccessiveCreateTicket() test {
		person = new bdd.Person("Bob");
		ticket = person.createTicket(122);
		$assert.throws( function(){ person.createTicket(122); }, 'ticketExists', 'Ticket 122 already exists' );
	}
}

