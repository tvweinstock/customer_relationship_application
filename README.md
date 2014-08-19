customer_relationship_application
=================================
Suggested Process

Please use the below as a guide and not as an exact "how-to" to implement your solution. Use common sense and judgement where appropriate. We aren't looking for replicate answers.

User Stories

Software developers use User Stories as a guide to know what to implement. They serve as a list of things that the customer thinks should be in an application. Below we have written out all of the user stories for the CRM. Use these as a to-do list or guide when implementing your solution.



Implement the Runner

-As a user, I am presented with a prompt to 'add', 'modify', 'display all', 'display contact', display attribute', 'delete' and 'exit'.
-As a user, if 'add' is typed, I am prompted to give my 'first name', 'last name', 'email' and 'notes'.
-As a user, if 'modify' is typed, I am prompted to enter a contact attribute to be modified.
-As a user, when an attribute is entered, I am prompted to type 'yes' or 'no' to confirm my selection.
-As a user, if 'yes' is typed, I am prompted to change 'id', 'firstname', 'lastname' and 'email'.
-As a user, when an attribute is entered, I am prompted to enter a new value for the attribute.
-As a user, if 'no' is typed, I am returned back to the main menu.
-As a user, if 'display all' is typed, I am shown all of the contacts that exist.
-As a user, if 'display contact' is typed, I am shown a particular contact.
-As a user, if 'display attribute' is typed, I am prompted to enter an attribute so that I can see all of the contacts according to that attribute.
-As a user, if 'delete' is typed, I am prompted to enter an attribute value of the contact to be deleted.
-As a user, if 'exit' is typed, I am exited out of the program and returned to the command line.


Implement the Contact Class

-As a developer, the contact class should have five attributes: id, first_name, last_name, email and notes.
-As a developer, when a user creates a contact, all five attributes are mandatory.
-As a developer, I am able to modify those attributes at any point in the program at a later time.
-As a developer, the Contact class should also have a method that displays all of its values.


Implement the Rolodex Class

-As a developer, I should implement the Rolodex class as an array that accepts new contacts.
-As a developer, the rolodex class should have the following methods: add, modify_contact, display_all_contacts, display_particular_contact, display_info_by_attribute and delete_contact.
