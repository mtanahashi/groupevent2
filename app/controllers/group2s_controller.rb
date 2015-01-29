class Group2sController < ApplicationController
  before_action :set_group2, only: [:show, :edit, :update, :destroy]

  # GET /group2s
  # GET /group2s.json
  def index
    @group2s = Group2.all
  end

  # GET /group2s/1
  # GET /group2s/1.json
  def show
  end

  # GET /group2s/new
  def new
    @group2 = Group2.new
  end

  # GET /group2s/1/edit
  def edit
  end

  # POST /group2s
  # POST /group2s.json
  def create
    @group2 = Group2.new(group2_params)

    respond_to do |format|
      if @group2.save
        format.html { redirect_to @group2, notice: 'Group2 was successfully created.' }
        format.json { render :show, status: :created, location: @group2 }
      else
        format.html { render :new }
        format.json { render json: @group2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /group2s/1
  # PATCH/PUT /group2s/1.json
  def update
    respond_to do |format|
      if @group2.update(group2_params)
        format.html { redirect_to @group2, notice: 'Group2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @group2 }
      else
        format.html { render :edit }
        format.json { render json: @group2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group2s/1
  # DELETE /group2s/1.json
  def destroy
    @group2.destroy
    respond_to do |format|
      format.html { redirect_to group2s_url, notice: 'Group2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group2
      @group2 = Group2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group2_params
      params.require(:group2).permit(:name, :description, :organization_date, :group_id_id)
    end
end
