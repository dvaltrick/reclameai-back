class Api::ComplaintController < Api::ApiController
    before_action :set_complaint, only: [:show, :update, :destroy]
    
    # GET /api/complaint 
    def index
        @complaints = Complaint.all()
        render json: @complaints
    end

    # POST /api/complaint
    def create   
        @complaint = Complaint.new(complaint_params)
        if @complaint.save
            render json: @complaint, status: :created
        else
            render json: @complaints.errors, status: :unprocessable_entity
        end
    end

    private 
        def set_complaint
            @complaint = Complaint.find(params[:id])
        end

        def complaint_params
            params.require(:complaint).permit(:order, :name, :email, :phone, :description, :zipcode)
        end
end
