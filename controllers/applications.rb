#Mentor uses this route to accept 1 mentee application
get "/applications" do
  @menteeIDList = [] #List to store mentee
  IDList = Request.where(mentorID: $mentors.id) #Finds the request where it finds the specified mentor ID
  IDList.each do |id|
    mentee = Mentee.first(id: id.menteeID)
    @menteeIDList.push(mentee) unless mentee.nil?
  end
  erb :mentee_applications
end

post "/match" do   
  #When mentor accepts mentee request, mentorMatch field updated to value of mentor ID in the mentees table
  Mentee.where(id: params[:menteeID]).update(:mentorMatch => $mentors.id)
  
  #When mentor accepts mentee request, menteeMatch field updated to value of mentee ID in the mentors table
  Mentor.where(id: $mentors.id).update(:menteeMatch => params[:menteeID])
  
  #Deletes the all requests a mentor has from the table after mentor accepts a mentee request
  Request.where(mentorID: $mentors.id).delete
  
  #Make mentor profile invisible/private
  $mentors.profileStatus = "1"
  $mentors.save_changes
  
  redirect "/MentorDashboard"
end

get "/myMentor" do
  #List to store the mentor matched to a mentee
  @mentorMatchedList = []
  #Finds the ID of the mentor that is equal to the value stored in the mentorMatch column in the mentees table
  MentorIDList = Mentor.where(id: $mentees.mentorMatch)
  MentorIDList.each do |id|
    @mentorMatchedList.push(Mentor.first(id: id.id)) #Stores the mentor record found in the list to be displayed
  end
  
  erb :myMentor
end

get "/myMentee" do
  #List to store the mentee matched to a mentor
 @menteeMatchedList = []
  #Finds the ID of the mentee that is equal to the value stored in the menteeMatch column in the mentors table
  MenteeIDList = Mentee.where(id: $mentors.menteeMatch)
  MenteeIDList.each do |id|
    @menteeMatchedList.push(Mentee.first(id: id.id)) #Stores the mentor record found in the list to be displayed
  end
  
  erb :myMentee
end

get "/myMenteeA" do
  #List to store the mentee matched to a mentor
 @menteeMatchedList = []
  #Finds the ID of the mentee that is equal to the value stored in the menteeMatch column in the mentors table
  MenteeIDList = Mentee.where(id: $mentors.menteeMatch)
  MenteeIDList.each do |id|
    @menteeMatchedList.push(Mentee.first(id: id.id)) #Stores the mentor record found in the list to be displayed
  end
  
  erb :myMenteeA
end

#Route for the admin to view pending mentee applications
get "/PendingMenteeApplications" do
  @requests = Request.all #All records in Requests table
  @menteesInfo = []
  @mentorsInfo = []
  @requests.each do |request|
    mentee = Mentee.first(id: request.menteeID)
    mentor = Mentor.first(id: request.mentorID)
    
    @menteesInfo.push([mentee.id, mentee.name, mentee.email]) #Mentee information
    @mentorsInfo.push([mentor.id, mentor.name, mentor.email]) #Mentor information
  end

  erb :pending_mentee_requests
  
end

#Lists all paired mentees, so an admin can search for paired mentees within a faculty
get "/PairedMentees" do
  #New variable to enable admins to search for mentees based on faculty
  @faculty_search = params.fetch("faculty_search", "").strip
#   unpaired_Mentee = Mentee.where(Sequel.like(:mentorMatch, "0"))
  
  #If no faculty is being searched, it displays the list of all paired mentees in alphabetical order 
  #else it searches through the faculty field in the mentees table and displays paired mentees' whose 
  #faculty is being searched
    @mentees = if @faculty_search.empty? 
                Mentee.order(:faculty).where(~Sequel.like(:mentorMatch, 0))
             else
               Mentee.order(:faculty).where(Sequel.ilike(:faculty, "%#{@faculty_search}%")) #ilike used to make search case insensitive
             end

  erb :paired_mentees
end