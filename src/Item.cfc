component {
	public Item function init(required string name) {
		variables.name = name;
		return this;
	}

	public string function getName() {
		return variables.name;
	}
}