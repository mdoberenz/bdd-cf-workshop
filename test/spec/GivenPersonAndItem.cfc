component extends="testbox.system.BaseSpec"{

function run(){
	Feature( "Bidding on an Item", function(){
		Scenario( "Bid on an available Item", function(){
			Given( "Allen and Samsung TV", function(){
				tv = new bdd.Item("Samsung TV");
				allen = new bdd.Person("Allen");

				When( "Allen acquires ticket 123", function(){
					ticket = allen.createTicket(123);

					Then( "Ticket 123 shows its number", function(){
						expect(ticket.getNumber()).toBe(123);
					});

					When( "Allen bids ticket 123 on Samsung TV", function(){
						ticket.bid(tv);

						Then( "Ticket 123 shows it was bid on Samsung TV", function(){
							expect(ticket.getItem()).toBe(tv);
						});
					});

					When( "Allen tries to reacquire ticket 123", function(){
						Then( "Fail with TicketExists error", function(){
							expect( function(){ allen.createTicket(123); } ).toThrow( 'ticketExists', 'Ticket 123 already exists' );
						});
					});

				});
			});
		});
	});

}}

