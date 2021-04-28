require_relative "../spec_helper"

#page links tests from /index
describe "the page links" do
    it "sign up is accessible from the index page" do
        visit"/"
        click_link "Sign-Up"
        expect(page).to have_content "Mentee"
    end
        

    it "is accessible from the index page" do
        visit"/"
        click_link "Login"
        expect(page).to have_content "Don't have an account?"
    end
    
    

    it "is accessible from the index page" do
        visit"/"
        click_link "Contact Us"
        expect(page).to have_content "Contact Admin:"
    end
    

    it "is accessible from the index page" do
        visit"/"
        click_link "Our Program"
        expect(page).to have_content "one-to-one mentoring program"
    end

    it "is accessible from the index page" do
        visit"/"
        click_link "Contact"
        expect(page).to have_content "Contact Admin:"
    end 
    
    it "is accessible from the index page" do   
        visit"/"
        click_link "Accessibility"
        expect(page).to have_content "Everyone using this website"
    end  
    
    
 #page links tests from /login  


    it "is accessible from the login page" do
        visit"/login"
        click_link "Our Program"
        expect(page).to have_content "one-to-one mentoring program"
    end
    
    

    it "is accessible from the login page" do
        visit"/login"
        click_link "Contact Us"
        expect(page).to have_content "Contact Admin:"
    end
    

    it "is accessible from the login page" do
        visit"/login"
        click_link "Login"
        expect(page).to have_content "Don't have an account?"
    end    

        it "is accessible from the login page" do
         visit"/login"
        click_link "Sign-Up"
        expect(page).to have_content "Mentee"
        end
    
    it "is accessible from the login page" do
        visit"/login"
        click_link "Contact"
        expect(page).to have_content "Contact Admin:"
    end 
    
    it "is accessible from the login page" do   
        visit"/login"
        click_link "Accessibility"
        expect(page).to have_content "Everyone using this website"
    end 


    
 #page links tests from /contact  

    it "is accessible from the contact page" do
        visit"/contact"
        click_link "Sign-Up"
        expect(page).to have_content "Mentee"
    end
        

    it "is accessible from the contact page" do
        visit"/contact"
        click_link "Our Program"
        expect(page).to have_content "one-to-one mentoring program"
    end
    
    

    it "is accessible from the contact page" do
        visit"/contact"
        click_link "Contact Us"
        expect(page).to have_content "Contact Admin:"
    end

    it "is accessible from the contact page" do
        visit"/contact"
        click_link "Login"
        expect(page).to have_content "Don't have an account?"
    end  

it "is accessible from the contact page" do
        visit"/contact"
        click_link "Contact"
        expect(page).to have_content "Contact Admin:"
    end 
    
it "is accessible from the contact page" do   
        visit"/contact"
        click_link "Accessibility"
        expect(page).to have_content "Everyone using this website"
    end 
    
 #page links tests from /SignUpChoices 

    it "is accessible from the SignUpChoices page" do
        visit"/SignUpChoices"
        click_link "Sign-Up"
        expect(page).to have_content "Mentee"
    end
        

    it "is accessible from the SignUpChoices page" do
        visit"/SignUpChoices"
        click_link "Our Program"
        expect(page).to have_content "one-to-one mentoring program"
    end
    
    

    it "is accessible from the SignUpChoices page" do
        visit"/SignUpChoices"
        click_link "Contact Us"
        expect(page).to have_content "Contact Admin:"
    end
       
     
it "is accessible from the SignUpChoices page" do
        visit"/SignUpChoices"
        click_link "Contact"
        expect(page).to have_content "Contact Admin:"
    end 
    
it "is accessible from the SignUpChoices page" do   
        visit"/SignUpChoices"
        click_link "Accessibility"
        expect(page).to have_content "Everyone using this website"
    end 
  
       
 #page links tests from /MentorDashboard
    
    it "is accessible from the MentorDashboard page" do
        visit"/MentorDashboard"
        click_link "Contact Us"
        expect(page).to have_content "Contact Admin:"
    end
           

    it "is accessible from the MentorDashboard page" do
        add_test_mentor
        login_mentor  
        click_link "Dashboard" 
        click_link "Logout"
        expect(page).to have_content "Logged out"
    end
    
    it "is accessible from the MentorDashboard page" do
        visit"/MentorDashboard"
        click_link "Our Program"
        expect(page).to have_content "one-to-one mentoring program"
    end 
    
        it "is accessible from the MentorDashboard page" do
        add_test_mentor
        login_mentor   
        visit"/MentorDashboard"
        click_link "Dashboard"
        expect(page).to have_content "Mentor Dashboard"
    end 
    
    
            it "is accessible from the MentorDashboard page" do
        add_test_mentor
        login_mentor   
        visit"/MentorDashboard"
        click_link "View mentee applications"
        expect(page).to have_content "Mentee Applications"
    end 
    
            it "is accessible from the MentorDashboard page" do
        add_test_mentor
        login_mentor  
        visit"/MentorDashboard"
        click_link "Edit Profile"
        expect(page).to have_content "Edit your information"
    end 
    
it "is accessible from the MentorDashboard page" do
        add_test_mentor
        login_mentor   
        visit"/MentorDashboard"
        click_link "My Mentee"
        expect(page).to have_content "Details of your current mentee"
    end 
    
it "is accessible from the MentorDashboard page" do
        add_test_mentor
        login_mentor  
        visit"/MentorDashboard"
        click_link "Contact"
        expect(page).to have_content "Contact Admin:"
    end 
    
            it "is accessible from the MentorDashboard page" do
        add_test_mentor
        login_mentor      
        visit"/MentorDashboard"
        click_link "Accessibility"
        expect(page).to have_content "Everyone using this website"
    end 
    
   #page links tests from /MenteeDashboard
    
     it "is accessible from the MenteeDashboard page" do
        visit"/MenteeDashboard"
        click_link "Contact Us"
        expect(page).to have_content "Contact Admin:"
         clear_database   
    end
           

    it "is accessible from the MenteeDashboard page" do
        add_test_user
        login_mentee
        visit"/MenteeDashboard"
        click_link "Logout"
        expect(page).to have_content "Logged out"
        clear_database   
    end
    
    it "is accessible from the MenteeDashboard page" do
        visit"/MenteeDashboard"
        click_link "Our Program"
        expect(page).to have_content "one-to-one mentoring program"
        clear_database   
    end 
    
        it "is accessible from the MenteeDashboard page" do
        add_test_user
        login_mentee 
        visit"/MenteeDashboard"
        click_link "Dashboard"
        expect(page).to have_content "Mentee Dashboard"
        clear_database   
    end 
    
    it "is accessible from the MenteeDashboard page" do
        add_test_user
         login_mentee
        visit"/MenteeDashboard"
        click_link "Find a mentor"
        expect(page).to have_content "Search for a Mentor"
        clear_database   
    end 
    
            it "is accessible from the MenteeDashboard page" do
        add_test_user
        visit "/login"
         login_mentee 
        visit"/MenteeDashboard"
        click_link "Edit Profile"
        expect(page).to have_content "Edit your information"
        clear_database   
    end 
    
            it "is accessible from the MenteeDashboard page" do
        add_test_user
         login_mentee 
        visit"/MenteeDashboard"
        click_link "My Mentor"
        expect(page).to have_content "Details of your current mentor"
        clear_database   
    end 
       
            it "is accessible from the MenteeDashboard page" do
        add_test_user
        login_mentee   
        visit"/MenteeDashboard"
        click_link "Contact"
        expect(page).to have_content "Contact Admin:"
        clear_database   
    end
            it "is accessible from the MenteeDashboard page" do
        add_test_user
        login_mentee  
        visit"/MenteeDashboard"
        click_link "Accessibility"
        expect(page).to have_content "Everyone using this website"
        clear_database   
    end 

   #page links tests from /AdminDashboard
    
     it "is accessible from the AdminDashboard page" do
        visit"/AdminDashboard"
        click_link "Contact Us"
        expect(page).to have_content "Contact Admin:"
        clear_database   
    end
           

    it "is accessible from the AdminDashboard page" do
        
        login_admin
        visit"/AdminDashboard"
        click_link "Logout"
        expect(page).to have_content "Logged out"
        clear_database   
    end
    
    it "is accessible from the AdminDashboard page" do
        visit"/AdminDashboard"
        click_link "Our Program"
        expect(page).to have_content "one-to-one mentoring program"
        clear_database   
    end 
    
        it "is accessible from the AdminDashboard page" do

        login_admin  
        visit"/AdminDashboard"
        click_link "Dashboard"
        expect(page).to have_content "Admin Dashboard"
        clear_database   
    end 
    
    it "is accessible from the AdminDashboard page" do
        login_admin 
        visit"/AdminDashboard"
        click_link "Mentor List"
        expect(page).to have_content "Your search revealed no mentors"
        clear_database   
    end 
    
            it "is accessible from the AdminDashboard page" do
        login_admin
        visit"/AdminDashboard"
        click_link "Edit Profile"
        expect(page).to have_content "Edit your information"
        clear_database   
    end 
    
            it "is accessible from the AdminDashboard page" do
        login_admin
        visit"/AdminDashboard"
        click_link "Mentee List"
        expect(page).to have_content "Your search revealed no mentees"
        clear_database   
    end 
       
            it "is accessible from the AdminDashboard page" do
        login_admin 
        visit"/AdminDashboard"
        click_link "Contact"
        expect(page).to have_content "Contact Admin:"
        clear_database   
    end
            it "is accessible from the AdminDashboard page" do
        login_admin
        visit"/AdminDashboard"
        click_link "Accessibility"
        expect(page).to have_content "Everyone using this website"
        clear_database   
    end 

            it "is accessible from the AdminDashboard page" do
        login_admin
        visit"/AdminDashboard"
        click_link "Pending Mentee Applications"
        expect(page).to have_content "Pending Mentee Requests"
        clear_database   
    end
            it "is accessible from the AdminDashboard page" do
        login_admin
        visit"/AdminDashboard"
        click_link "Paired Mentees"
        expect(page).to have_content "Search for a Paired Mentee"
        clear_database   
    end 


 #page links tests from /PendingMenteeApplications
    
           
    it "is accessible from the AdminDashboard page" do
        
        login_admin
        visit"/PendingMenteeApplications"
        click_link "Logout"
        expect(page).to have_content "Logged out"
        clear_database   
    end
    
    it "is accessible from the AdminDashboard page" do
        login_admin
        visit"/PendingMenteeApplications"
        click_link "Our Program"
        expect(page).to have_content "one-to-one mentoring program"
        clear_database   
    end 
    
        it "is accessible from the AdminDashboard page" do

        login_admin 
        visit"/PendingMenteeApplications"
        click_link "Dashboard"
        expect(page).to have_content "Admin Dashboard"
        clear_database   
    end 

      
            it "is accessible from the AdminDashboard page" do
        visit "/login"
        fill_in "username", with: "admin2"
        fill_in "password", with: "S.F"
        click_button "Submit"  
        visit"/PendingMenteeApplications"
        click_link "Accessibility"
        expect(page).to have_content "Everyone using this website"
        clear_database   
    end 

 #page links tests from /PairedMentees
    
         
    it "is accessible from the AdminDashboard page" do
        
        login_admin
        visit"/PairedMentees"
        click_link "Logout"
        expect(page).to have_content "Logged out"
        clear_database   
    end
    
    it "is accessible from the AdminDashboard page" do
        login_admin
        visit"/PairedMentees"
        click_link "Our Program"
        expect(page).to have_content "one-to-one mentoring program"
        clear_database   
    end 
    
        it "is accessible from the AdminDashboard page" do

        login_admin 
        visit"/PairedMentees"
        click_link "Dashboard"
        expect(page).to have_content "Admin Dashboard"
        clear_database   
    end 

            it "is accessible from the AdminDashboard page" do
        login_admin
        visit"/PairedMentees"
        click_link "Accessibility"
        expect(page).to have_content "Everyone using this website"
        clear_database   
    end 

#admin/mentor
    it "is accessible from the AdminDashboard page" do
        
        login_admin_mentor
        visit"/PairedMentees"
        click_link "Logout"
        expect(page).to have_content "Logged out"
        clear_database   
    end
    
    it "is accessible from the AdminDashboard page" do
        login_admin_mentor
        visit"/PairedMentees"
        click_link "Our Program"
        expect(page).to have_content "one-to-one mentoring program"
        clear_database   
    end 
    
        it "is accessible from the AdminDashboard page" do

        login_admin_mentor 
        visit"/PairedMentees"
        click_link "Dashboard"
        expect(page).to have_content "Admin Dashboard"
        clear_database   
    end 

 it "is accessible from the AdminDashboard page" do
        login_admin_mentor
        visit"/PairedMentees"
        click_link "Accessibility"
        expect(page).to have_content "Everyone using this website"
        clear_database   
    end 

 #page links tests from /searchForAMentee
    


    it "is accessible from the AdminDashboard page" do
        
        login_admin
        visit"/searchForAMentee"
        click_link "Logout"
        expect(page).to have_content "Logged out"
        clear_database   
    end
    
    it "is accessible from the AdminDashboard page" do
        login_admin
        visit"/searchForAMentee"
        click_link "Our Program"
        expect(page).to have_content "one-to-one mentoring program"
        clear_database   
    end 
    
        it "is accessible from the AdminDashboard page" do

        login_admin  
        visit"/searchForAMentee"
        click_link "Dashboard"
        expect(page).to have_content "Admin Dashboard"
        clear_database   
    end 

            it "is accessible from the AdminDashboard page" do
        login_admin
        visit"/searchForAMentee"
        click_link "Accessibility"
        expect(page).to have_content "Everyone using this website"
        clear_database   
    end 

#page links tests from /searchForAMentor
           

    it "is accessible from the AdminDashboard page" do
        
        login_admin
        visit"/searchForAMentor"
        click_link "Logout"
        expect(page).to have_content "Logged out"
        clear_database   
    end
    
    it "is accessible from the AdminDashboard page" do
        login_admin
        visit"/searchForAMentor"
        click_link "Our Program"
        expect(page).to have_content "one-to-one mentoring program"
        clear_database   
    end 
    
        it "is accessible from the AdminDashboard page" do

        login_admin
        visit"/searchForAMentor"
        click_link "Dashboard"
        expect(page).to have_content "Admin Dashboard"
        clear_database   
    end 

            it "is accessible from the AdminDashboard page" do
        login_admin  
        visit"/searchForAMentor"
        click_link "Accessibility"
        expect(page).to have_content "Everyone using this website"
        clear_database   
    end 

    #checks if the header is correct for admin
 it "is accessible from the AdminDashboard page" do
        login_admin   
        visit"/AdminDashboard"
        expect(page).not_to have_content "My Mentor Schedule"
        clear_database   
    end 


   #page links tests from /AdminMentorDashboard
    
           
    it "is accessible from the AdminMentorDashboard page" do
        add_test_mentor
        login_admin_mentor
        visit"/AdminMentorDashboard"
        click_link "Logout"
        expect(page).to have_content "Logged out"
        clear_database   
    end
    
    it "is accessible from the AdminMentorDashboard page" do
        visit"/AdminMentorDashboard"
        click_link "Our Program"
        expect(page).to have_content "one-to-one mentoring program"
        clear_database   
    end 
    
        it "is accessible from the AdminMentorDashboard page" do
        add_test_mentor
        login_admin_mentor 
        visit"/AdminMentorDashboard"
        click_link "Dashboard"
        expect(page).to have_content "Admin + Mentor Dashboard"
        clear_database   
    end 
    
    it "is accessible from the AdminMentorDashboard page" do
        clear_database 
        add_test_mentor
        login_admin_mentor   
        visit"/AdminMentorDashboard"
        click_link "Mentor List"
        expect(page).to have_content "Mentor List"
        clear_database   
    end 
    
            it "is accessible from the AdminMentorDashboard page" do
        add_test_mentor
        visit "/login"
        login_admin_mentor
        visit"/AdminMentorDashboard"
        click_link "Edit Profile"
        expect(page).to have_content "Edit your information"
        clear_database   
    end 
    
            it "is accessible from the AdminMentorDashboard page" do
        clear_database         
        add_test_mentor
        login_admin_mentor
        visit"/AdminMentorDashboard"
        click_link "Mentee List"
        expect(page).to have_content "Mentee List"
        clear_database   
    end 
       
            it "is accessible from the AdminMentorDashboard page" do
        add_test_mentor
        login_admin_mentor
        visit"/AdminMentorDashboard"
        click_link "Accessibility"
        expect(page).to have_content "Everyone using this website"
        clear_database   
    end 
    #checks if the header is correct for admin
 it "is accessible from the AdminMentorDashboard page" do
       add_test_mentor
        login_admin_mentor 
        visit"/AdminMentorDashboard"
        expect(page).not_to have_content "My Mentor Schedule"
        clear_database   
    end 
            it "is accessible from the AdminMentorDashboard page" do
        add_test_mentor
        login_admin_mentor 
        visit"/AdminMentorDashboard"
        click_link "My Mentee"
        expect(page).to have_content "Details of your current mentee"
        clear_database   
    end 

            it "is accessible from the AdminMentorDashboard page" do
        add_test_mentor
        login_admin_mentor
        visit"/AdminMentorDashboard"
        click_link "My Mentee"
        expect(page).to have_content "Details of your current mentee"
        clear_database   
    end 

#test buttons and links 
describe "the page links" do
    
   
    
 #page links tests from /login  


    it "is accessible from the login page" do
        visit "/"
        click_link "Login"
        click_link "Our Program"
        expect(page).to have_content "one-to-one mentoring program"
    end
    
    

    it "is accessible from the login page" do
         visit "/"
        click_link "Login"
        click_link "Contact Us"
        expect(page).to have_content "Contact Admin:"
    end
    

    it "is accessible from the login page" do
         visit "/"
        click_link "Login"
        click_link "Login"
        expect(page).to have_content "Don't have an account?"
    end    

        it "is accessible from the login page" do
         visit "/"
        click_link "Login"
        click_link "Sign-Up"
        expect(page).to have_content "Mentee"
        end
    
    it "is accessible from the login page" do
         visit "/"
        click_link "Login"
        click_link "Contact"
        expect(page).to have_content "Contact Admin:"
    end 
    
    it "is accessible from the login page" do   
         visit "/"
        click_link "Login"
        click_link "Accessibility"
        expect(page).to have_content "Everyone using this website"
    end 


    
 #page links tests from /contact  

    it "is accessible from the contact page" do
        visit "/"
        click_link "Contact Us"
        click_link "Sign-Up"
        expect(page).to have_content "Mentee"
    end
        

    it "is accessible from the contact page" do
        visit "/"
        click_link "Contact Us"
        click_link "Our Program"
        expect(page).to have_content "one-to-one mentoring program"
    end
    
    

    it "is accessible from the contact page" do
        visit "/"
        click_link "Contact Us"
        expect(page).to have_content "Contact Admin:"
    end

    it "is accessible from the contact page" do
        visit "/"
        click_link "Contact Us"
        click_link "Login"
        expect(page).to have_content "Don't have an account?"
    end  

it "is accessible from the contact page" do
        visit "/"
        click_link "Contact Us"
        click_link "Contact"
        expect(page).to have_content "Contact Admin:"
    end 
    
it "is accessible from the contact page" do   
        visit "/"
        click_link "Contact Us"
        click_link "Accessibility"
        expect(page).to have_content "Everyone using this website"
    end 
    
 #page links tests from /SignUpChoices 

    it "is accessible from the SignUpChoices page" do
        visit "/"  
        click_link "Sign-Up"
        expect(page).to have_content "Mentee"
    end
        

    it "is accessible from the SignUpChoices page" do
        visit "/"  
        click_link "Sign-Up"
        click_link "Our Program"
        expect(page).to have_content "one-to-one mentoring program"
    end
    
    

    it "is accessible from the SignUpChoices page" do
        visit "/"  
        click_link "Sign-Up"
        click_link "Contact Us"
        expect(page).to have_content "Contact Admin:"
    end
       
     
it "is accessible from the SignUpChoices page" do
        visit "/"  
        click_link "Sign-Up"
        click_link "Contact"
        expect(page).to have_content "Contact Admin:"
    end 
    
it "is accessible from the SignUpChoices page" do   
        visit "/"  
        click_link "Sign-Up"
        click_link "Accessibility"
        expect(page).to have_content "Everyone using this website"
    end 
it "is accessible from the SignUpChoices page" do   
        visit "/"  
        click_link "Sign-Up"
        click_link "Mentee"
        expect(page).to have_content "Mentee Sign Up"
    end 
it "is accessible from the SignUpChoices page" do   
        visit "/"  
        click_link "Sign-Up"
        click_link "Mentor"
        expect(page).to have_content "Mentor Sign Up"
    end 
end
clear_database    
    
end