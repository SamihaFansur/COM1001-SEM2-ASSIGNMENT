###############################MENTEE######################################
get "/editMentee" do
  id = params["id"] #new variable to search the id of corresponding mentee profile to be edited
  
 #If id requested exists then calls the edit mentee form
  @mentees = Mentee[id] if Mentee.id_exists?(id)
  erb :mentee_edit_info
end

post "/editMentee" do
  id = params["id"] #variable to search the id of corresponding mentee profile being edited
  
  #If mentee id exists and field values are valid then saves changes and redirects to mentee dashboard
  if Mentee.id_exists?(id)
    @mentees = Mentee[id]
    @mentees.loadEdit(params)

    if @mentees.valid?
      @mentees.save_changes
      redirect "/MenteeDashboard"
    end
  end

  erb :mentee_edit_info
end

###############################MENTOR######################################
get "/editMentor" do
  id = params["id"] #new variable to search the id of corresponding mentor profile to be edited
  
 #If id requested exists then calls the edit mentor form
  @mentors = Mentor[id] if Mentor.id_exists?(id)
  erb :mentor_edit_info
end

post "/editMentor" do
  id = params["id"] #variable to search the id of corresponding mentee profile being edited
  
  #If mentor id exists and field values are valid then saves changes and redirects to mentor dashboard
  if Mentor.id_exists?(id)
    @mentors = Mentor[id]
    @mentors.loadEdit(params)

    if @mentors.valid?
      @mentors.save_changes
      redirect "/MentorDashboard"
    end
  end

  erb :mentor_edit_info
end
