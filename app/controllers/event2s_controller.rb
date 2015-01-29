class Event2sController < ApplicationController
  before_action :set_event2, only: [:show, :edit, :update, :destroy]

  # GET /event2s
  # GET /event2s.json
  def index
    @event2s = Event2.all
  end

  # GET /event2s/1
  # GET /event2s/1.json
  def show
  end

  # GET /event2s/new
  def new
    @event2 = Event2.new
  end

  # GET /event2s/1/edit
  def edit
  end

  # POST /event2s
  # POST /event2s.json
  def create
    @event2 = Event2.new(event2_params)

    respond_to do |format|
      if @event2.save
        format.html { redirect_to @event2, notice: 'Event2 was successfully created.' }
        format.json { render :show, status: :created, location: @event2 }
      else
        format.html { render :new }
        format.json { render json: @event2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event2s/1
  # PATCH/PUT /event2s/1.json
  def update
    respond_to do |format|
      if @event2.update(event2_params)
        format.html { redirect_to @event2, notice: 'Event2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @event2 }
      else
        format.html { render :edit }
        format.json { render json: @event2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event2s/1
  # DELETE /event2s/1.json
  def destroy
    @event2.destroy
    respond_to do |format|
      format.html { redirect_to event2s_url, notice: 'Event2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event2
      @event2 = Event2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event2_params
      params.require(:event2).permit(:name, :description, :event_date, :group_id)
    end
end
