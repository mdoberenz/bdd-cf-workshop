component {
	public Ticket function init(required Person person, required numeric number) {
		variables.person = person;
		variables.number = number;
		return this;
	}

	public numeric function getNumber() {
		return variables.number;
	}

	public Person function getPerson() {
		return variables.person;
	}

	public Item function getItem() {
		return variables.item;
	}

	public void function bid(required Item item) {
		variables.item = item;
	}
}