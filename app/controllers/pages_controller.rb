class PagesController < ApplicationController
  def index
      @complaints = Complaint.newest_first
  end
    def show
        @complaint = Complaint.find(params[:id])
    end
    def hotzones
    end
    def forum
    end
end
