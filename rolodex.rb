class Rolodex
	def initialize
		@contact_id = 1000 
		@contacts = []
	end

	def add_contact(contact)
		@contacts << contact
		contact.id = @contact_id
		@contact_id += 1
	end



	def find_contact(contact)

	end

	def delete_contact(contact)
		puts "Item deleted! Return to main menu."
		print_main_menu

	end


end
