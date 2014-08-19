require_relative 'contact'
require_relative 'rolodex'

class CRM
	attr_accessor :name

	def self.run(name)
		crm = self.new(name)
		crm.main_menu
	end

	def initialize(name)
		@name = name
		@rolodex = Rolodex.new
		puts "Welcome to #{name}"
	end

	def print_main_menu
		puts "[1] Add a new contact"
		puts "[2] Modify an existing contact"
		puts "[3] Delete a contact"
		puts "[4] Display all the contacts"
		puts "[5] Display an attribute"
		puts "[6] Exit"
		puts "Enter a number:"

	end

	def main_menu
		print_main_menu
		selection = gets.chomp.to_i
		call_option(selection)
	end

	def call_option(selection)
		case selection
		when 1 then add_new_contact
		when 2 then modify_contact
		when 3 then delete_contact
		when 4 then display_contacts
		when 5 then display_attribute
		when 6
			puts "Goodbye!"
			return
		else
			puts "Invalid option. Please try again."
			main_menu
		end
	end

	def add_new_contact
		print "Enter First Name:"
		first_name = gets.chomp
		print "Enter Last Name:"
		last_name = gets.chomp
		print "Enter Email Address:"
		email = gets.chomp
		print "Enter a Note:"
		note = gets.chomp
		@rolodex.add_contact(Contact.new(first_name, last_name, email, note))
		main_menu
	end

	def modify_contact
        # Determine who you're chanigng
        puts "Please enter contact id."
        user_id = gets.chomp.to_i

        # Find the contact
        # Take it out of the rolodex 
        contact = @rolodex.find_contact(user_id)

        # Figure out part to change
        print_attribute_menu
        puts "Select item to modify."
        selection = gets.chomp.to_i
        puts "Enter new information"
        new_info = gets.chomp


        # Make the change 
        # Put it back in the rolodex
        case selection
        when 1 then contact.first_name = new_info
        when 2 then contact.last_name = new_info
        when 3 then contact.email = new_info
        when 4 then contact.note = new_info
        end
    end


    def delete_contact
		# Determine who you're deleting
		puts "Please enter contact id of entry you wish to remove."
		user_id = gets.chomp.to_i

		# find the contact, take it out of the rolodex	
		# delete contact
		remove_contact = @rolodex.delete_contact(user_id)
	end

	def display_contacts
		ObjectSpace.each_object(Rolodex).count
	end

	def display_attribute
	# Print attribute menu options
	puts "Please select attribute to display."
	print_attribute_menu	
	# Determine which attribute user wishes to display
	attribute_view = gets.chomp.to_i

	#find attribute in contact
	case attribute_view
	when 1 then contact.first_name.each{|f_name| puts f_name}
	when 2 then contact.last_name.each {|l_name| puts l_name}
	when 3 then contact.email.each {|emails| puts emails}
	when 4 then contact.note.each {|notes| puts notes}
	end

	#display
end


def print_attribute_menu
	puts "[1] First Name"
	puts "[2] Last Name"
	puts "[3] Email"
	puts "[4] Note"
end


end

CRM.run("Bitmaker Labs CRM")