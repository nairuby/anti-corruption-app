class ComplaintsController < ApplicationController
  #layout "complaint"
  def index
    @complaints = Complaint.newest_first
  end
  def show
    @complaint = Complaint.find(params[:id])
  end
  def new
    @complaint = Complaint.new 
#    flash[:notice] = "Complaint submitted successfully"
  end
  def create
    # Instantiate a new object using form parameters
    @complaint = Complaint.new(complaint_params)
    # Save the object
    if @complaint.save
      # If save succeeds, redirect to the index action
      redirect_to(:action => 'new')
    else
      # If save fails, redisplay the form so user can fix problems
      render('new')
    end
  end
  def edit
    @complaint = Complaint.find(params[:id])
  end
  def update
    # Find an existing object using form parameters
    @complaint = Complaint.find(params[:id])
    # Update the object
    if @complaint.update_attributes(complaint_params)
      # If update succeeds, redirect to the index action
#      flash[:notice] = "Complaint Updated successfully"
      redirect_to(:action => 'show', :id => @complaint.id)
    else
      # If update fails, redisplay the form so user can fix problems
      render('edit')
    end
  end
  def delete
    @complaint = Complaint.find(params[:id])
  end
  def destroy
      complaint = Complaint.find(params[:id]).destroy
      flash[:notice] = "Complaint '#{complaint.name}' destroyed successfully"
      redirect_to(:action => 'index')
  end
end

  private
    def complaint_params
      # same as using "params[:subject]", except that it:
      # - raises an error if :subject is not present
      # - allows listed attributes to be mass-assigned
      params.require(:complaint).permit(:name, :gender, :age, :incident_location, :phone, :email, :duty_bearer, :feedback)
    end




