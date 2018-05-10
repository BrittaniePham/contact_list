# Week 1 - Assignment 1

# BASIC OBJECTIVES
# 1.Build a contact list
# 2.Create a menu that allows a user to select
# 3.The menu should loop until the user exits

# BONUS
# delete a contact
# edit a contact

@contact_list = ["Spongebob", "Patrick", "Squidward", "Mr.Krabs"]

def print_menu
  puts "\nSelect an option"
  puts "1) Create a contact"
  puts "2) View All Contacts"
  puts "3) Delete a Contact"
  puts "4) Edit a Contact"
  puts "5) Exit\n"
  print ">>> "
end

def create_contact(name)
  @contact_list.push(name)
  puts "You added #{name} to your contacts"
end

def view_contacts
  puts "\nCONTACTS:"
  puts @contact_list
end

def remove_contact(name)
  @contact_list.delete(name)
  puts "You removed #{name} from your contacts"
end

def edit_contact(name)
  if @contact_list.include?(name)  
    @contact_list.each do |el| 
      if (el == name) 
        print "Enter new name: "
        name_changed = @contact_list.find_index(el)
        @contact_list[name_changed] = gets.chomp
      end
    end
  else
    puts "That name isn't in your contacts"
  end
end

print_menu

while user_choice = gets.chomp.to_i
  case user_choice
  when 1
    print "\nplease enter the name of your new contact: "
    create_contact(gets.chomp)
    print_menu
  when 2
    view_contacts
    print_menu
  when 3
    print "\nplease enter the name of the contact you want to remove: "    
    remove_contact(gets.chomp)
    print_menu
  when 4
    print "\nWhich contact would you like to edit? "    
    edit_contact(gets.chomp)
    print_menu
  else
    puts "\nGoodbye"
    break
  end
  
end