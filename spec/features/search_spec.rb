require_relative "../spec_helper"
#tests the mentor search when it is empty
describe "the search page" do
  context "with an empty database" do
    it "says the database is empty" do
      clear_database
      add_test_user
      visit "/login"
      fill_in "username", with: "123"
      fill_in "password", with: "123"
      click_button "Submit"
      visit "/search"
      fill_in "searchForMentor", with: "123"
      expect(page).to have_content "Your search revealed no mentors"
      clear_database  
    end
 
      
 #checks if applciaitons are empty        
   it "checks the mentor has been sent an application" do
 clear_database
      add_test_mentor
      add_test_user
      visit "/login" 
      fill_in "username", with: "1234"
      fill_in "password", with: "1234"
      click_button "Submit"      
      visit "/login" 
      fill_in "username", with: "123"
      fill_in "password", with: "123"
      click_button "Submit"
      visit "/search"
      fill_in "searchForMentor", with: "Accounting and Financial Management (BA)"
      click_button "Submit"
      click_button "Send application"      
      visit "/login" 
      fill_in "username", with: "1234"
      fill_in "password", with: "1234"
      click_button "Submit"
      visit "/MentorDashboard"
      visit "/menteeApplications"
      expect(page).to have_content "George"
      
      clear_database
    end   
      
#tests the mentor search when there is only
  context "with one record in the database" do
    it "lists the mentors" do     
      clear_database
      add_test_mentor
      visit "/login"
      fill_in "username", with: "1234"
      fill_in "password", with: "1234"
      click_button "Submit"
      visit "/index"
      add_test_user
      visit "/login"
      fill_in "username", with: "123"
      fill_in "password", with: "123"
      click_button "Submit"
      visit "/search"
      expect(page).to have_content "Sam Mentor"
      clear_database
    end
#checks that mentor doesnt appear when wrong course is entered
    it "does not list the mentor when a different courseName is searched for" do
      clear_database 
      add_test_mentor
      add_test_user
      visit "/login" 
      fill_in "username", with: "1234"
      fill_in "password", with: "1234"
      click_button "Submit"   
      visit "/login"
      fill_in "username", with: "123"
      fill_in "password", with: "123"
      click_button "Submit"
      visit "/search"
      fill_in "searchForMentor", with: "Architecture (BA)"
      click_button "Submit"
      expect(page).to have_content "Your search revealed no mentors"
      clear_database
    end
#checks that mentor appears when wrong course is entered
    it "lists the mentor when their courseName is searched for" do
      clear_database
      add_test_mentor
      add_test_user
      visit "/login" 
      fill_in "username", with: "1234"
      fill_in "password", with: "1234"
      click_button "Submit"   
      visit "/login"
      fill_in "username", with: "123"
      fill_in "password", with: "123"
      click_button "Submit"
      visit "/search"
      fill_in "searchForMentor", with: "Accounting and Financial Management (BA)"
      click_button "Submit"
      expect(page).to have_content "Sam Mentor"
      clear_database
    end


    
     #checks if applciaitons are empty        
   it "checks the mentor has been sent an application" do
 clear_database
      add_test_mentor
      add_test_user
      visit "/login" 
      fill_in "username", with: "1234"
      fill_in "password", with: "1234"
      click_button "Submit"      
      visit "/login" 
      fill_in "username", with: "123"
      fill_in "password", with: "123"
      click_button "Submit"
      visit "/search"
      fill_in "searchForMentor", with: "Accounting and Financial Management (BA)"
      click_button "Submit"
      click_button "Send application"      
      click_link "Dashboard"
      click_link "View mentor applications"
      click_button "Unsend Application"  
      click_link "Dashboard"
      click_link "View mentor applications"

      expect(page).to have_content "There are no pending applications"
      
      clear_database
    end   
  clear_database       
      
  end
clear_database    
end
clear_database    
end