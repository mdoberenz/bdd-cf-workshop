component extends="testbox.system.BaseSpec"{

function run(){
	Feature( "Multiple People Bidding on an Item", function(){
		Scenario( "Multiple Bids on an available Item", function(){
			Given( "Allen, Bob and Samsung TV", function(){
				tv = new bdd.Item("Samsung TV");
        allen = new bdd.Person("Allen");
        bob = new bdd.Person("Bob");

				When( "Allen acquires ticket 124", function(){
					ticket = allen.createTicket(124);

					When( "Bob tries to reacquire ticket 124", function(){
						Then( "Fail with TicketExists error", function(){
							expect( function(){ bob.createTicket(124); } ).toThrow( 'ticketExists', 'Ticket 124 already exists' );
						});
					});

				});
			});
		});
	});

}}

