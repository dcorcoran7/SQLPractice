Insert Into dcc9061.zip (zip_id, city, state)
    Values ("1", "Blackburg", "Virginia"),
	("2", "McLean", "Virginia"),
	("3", "Richmond", "Virginia"),
	("4", "Roanoke", "Virginia");

Insert Into dcc9061.address (address_id, street, zip_id)
    Values ("1", "7707 Maple Way", "1"),
	("2", "1111 Wood Circle", "2"),
	("3", "1234 Seneca Road", "2"),
	("4", "4321 Washington Street", "3"),
    ("5", "7124 Oak Street", "1"),
	("6", "5555 Fire Road", "2"),
	("7", "1127 Marion Avenue", "1"),
	("8", "9999 West Street", "3"),
    ("9", "8787 Circle Road", "1"),
	("10", "9061 Drillfield Drive", "2");

Insert Into dcc9061.menu (menu_id, menu_name)
    Values ("1", "Winter"),
	("2", "Spring"),
	("3", "Summer"),
	("4", "Fall");

Insert Into dcc9061.entree (entree_id, entre_name, entree_description, entree_cost_of_ingredients, entree_cost_of_preparation, preferred_wine_type)
    Values ("1", "Steak", "Juicy 8oz Steak", "3.00", "4.00", "red"),
	("2", "Hamburger", "Burger With All Toppings", "2.50", "3.50", "white"),
	("3", "Cheeseburger", "Cheesvurger With All Toppings", "2.75", "3.60", "red"),
	("4", "Salad", "Vegetarian Option", "1.50", "1.50", "red"),
	("5", "Chicken Parmesan", "Fried Chicken With Cheese and Pasta", "2.75", "3.00", "white");
    
Insert Into dcc9061.menu_dish (menu_dish_id, menu_dish_name, menu_dish_description, entree_id)
    Values ("1", "Steak", "Steak", "1"),
	("2", "Hamburger", "Hamburger", "2"),
	("3", "Cheeseburger", "Cheeseburger", "3"),
	("4", "Salad", "Salad", "4"),
    ("5", "Chicken Parmesan", "Chicken Parmesan", "5");

Insert Into dcc9061.sides (side_id, side_name, side_desc, is_sweet, side_cost_of_ingredients, side_cost_of_preparation)
    Values ("1", "Fries", "Crispy French Fries", "0", "2.50", "2.50"),
	("2", "Tater Tots", "Bite Sized Tater Tots", "0", "1.75", "1.00"),
	("3", "Chicken Tenders", "Fried Chicken Strips", "0", "3.00", "2.50"),
	("4", "Caeser Salad", "Classic Salad", "0", "1.50", "2.00"),
	("5", "Baked Potato", "Oven Baked Potato With Butter", "0", "1.50", "2.00"),
	("6", "Sweet Potato Fries", "Fries From Sweet Potatoes", "0", "2.50", "2.50"),
	("7", "Hash Browns", "Crispy Hash Browns", "0", "1.00", "1.00");
    
Insert Into dcc9061.side_list (side_list_id, menu_dish_id, side_id)
    Values ("1", "1", "1"),
	("2", "2", "2"),
	("3", "3", "1"),
	("4", "4", "4"),
    ("5", "5", "5"),
	("6", "1", "6"),
	("7", "2", "7"),
	("8", "3", "3");
    
Insert Into dcc9061.dish_build (choice_id, menu_id, menu_dish_id)
    Values ("1", "1", "1"),
	("2", "2", "2"),
	("3", "3", "3"),
	("4", "4", "4"),
    ("5", "1", "5"),
	("6", "2", "1"),
	("7", "3", "2"),
	("8", "4", "3"),
    ("9", "1", "4"),
	("10", "2", "5"),
	("11", "3", "1"),
	("12", "4", "2"),
    ("13", "1", "3"),
	("14", "2", "4"),
	("15", "3", "5"),
	("16", "4", "1");
    
Insert Into dcc9061.event_menu (event_menu_id, event_meny_name, event_menu_date, event_menu_time, guest_capacity, menu_id)
    Values ("1", "Event 1", "2021-01-01", "12:00:00", "50", "1"),
	("2", "Event 2", "2021-04-01", "12:00:00", "50", "2"),
	("3", "Event 3", "2021-07-01", "12:00:00", "50", "3"),
	("4", "Event 4", "2021-10-01", "12:00:00", "50", "4");
   
Insert Into dcc9061.member (member_id, m_f_name, m_L_name, m_phone, m_email, IfActive, address_id)
    Values ("1", "David", "Corcoran", "1234567891", "member1@gmail.com", "1", "1"),
	("2", "Thomas", "Corcoran", "2345678911", "member2@gmail.com", "0", "2"),
	("3", "George", "Washington", "3456789121", "member3@gmail.com", "1", "3"),
	("4", "Lionel", "Messi", "4567891231", "member4@gmail.com", "1", "4"),
    ("5", "Adama", "Traore", "5678912341", "member5@gmail.com", "0", "5"),
	("6", "Tiger", "Woods", "6789123451", "member6@gmail.com", "1", "6"),
	("7", "Bubba", "Watson", "7891234561", "member7@gmail.com", "1", "7"),
	("8", "Cristiano", "Ronaldo", "8912345671", "member8@gmail.com", "1", "8"),
    ("9", "Abraham", "Lincoln", "9123456781", "member9@gmail.com", "0", "9"),
	("10", "Thomas", "Edison", "2468135791", "member10@gmail.com", "1", "10"),
	("11", "Nikola", "Tesla", "9876543111", "member11@gmail.com", "0", "1"),
	("12", "Bill", "Gates", "1111111111", "member12@gmail.com", "1", "2"); 
    
Insert Into dcc9061.invitation (invitation_id, print_time, event_menu_id, member_id)
    Values ("1", "01:00:00", "1", "1"),
	("2", "02:00:00", "1", "2"),
	("3", "03:00:00", "1", "3"),
	("4", "04:00:00", "2", "4"),
    ("5", "05:00:00", "2", "5"),
	("6", "06:00:00", "2", "6"),
	("7", "07:00:00", "3", "7"),
	("8", "08:00:00", "3", "8"),
    ("9", "09:00:00", "3", "9"),
	("10", "10:00:00", "4", "10"),
	("11", "11:00:00", "4", "11"),
	("12", "12:00:00", "4", "12");
    
Insert Into dcc9061.rsvp (rsvp_id, invitation_id, plan_to_attend, received_time)
    Values ("1", "1", "1", "12:00:00"),
	("2", "2", "1", "12:00:00"),
	("3", "3", "1", "12:00:00"),
	("4", "4", "1", "12:00:00"),
    ("5", "5", "1", "12:00:00"),
	("6", "6", "1", "12:00:00"),
	("7", "7", "1", "12:00:00"),
	("8", "8", "1", "12:00:00"),
    ("9", "9", "1", "12:00:00"),
	("10", "10", "1", "12:00:00"),
	("11", "11", "0", "12:00:00"),
	("12", "12", "0", "12:00:00");

Insert Into dcc9061.rsvp_yes (rsvp_yes_id, rsvp_id, guest_count)
    Values ("1", "1", "1"),
	("2", "2", "1"),
	("3", "3", "1"),
	("4", "4", "1"),
    ("5", "5", "1"),
	("6", "6", "0"),
	("7", "7", "0"),
	("8", "8", "0"),
    ("9", "9", "0"),
	("10", "10", "0");
    
Insert Into dcc9061.attend (attend_id, bring_guest, invitation_id, choice_id)
    Values ("1", "yes", "1", "13"),
	("2", "yes", "2", "9"),
	("3", "yes", "3", "5"),
	("4", "yes", "4", "3"),
    ("5", "yes", "5", "5"),
	("6", "yes", "6", "3"),
	("7", "yes", "7", "7"),
	("8", "yes", "8", "13"),
    ("9", "yes", "9", "7"),
	("10", "yes", "10", "9");
    
Insert Into dcc9061.guest (guest_id, g_f_name, g_M_name, g_l_name, attend_id, choice_id)
    Values ("1", "Donald", "James", "Duck", "1", "1"),
	("2", "Mickey", "Alex", "Mouse", "2", "5"),
	("3", "Scooby", "Dooby", "Doo", "3", "9"),
	("4", "Fred", "Frederick", "Flintstone", "4", "5"),
    ("5", "Eugene", "Money", "Crabs", "5", "1");
    
Select m_f_name as "First Name", m_L_name as "Last Name", "Member" as "Attend Status"
From dcc9061.member
Join dcc9061.rsvp 
	On member.member_id = rsvp.rsvp_id
Where plan_to_attend = "1"
UNION
Select g_f_name, g_l_name, "Guest"
From dcc9061.guest;
