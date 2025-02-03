class NewgregsController < ApplicationController
  before_action :set_newgreg, only: %i[ show edit update destroy ]

  # GET /newgregs or /newgregs.json
  def index
    @newgregs = Newgreg.all
  end

  # GET /newgregs/1 or /newgregs/1.json
  def show
  end

  # GET /newgregs/new
  def new
    @newgreg = Newgreg.new
  end

  # GET /newgregs/1/edit
  def edit
  end

  # POST /newgregs or /newgregs.json
  def create
    @newgreg = Newgreg.new(newgreg_params)

    respond_to do |format|
      if @newgreg.save
        format.html { redirect_to @newgreg, notice: "Newgreg was successfully created." }
        format.json { render :show, status: :created, location: @newgreg }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @newgreg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /newgregs/1 or /newgregs/1.json
  def update
    respond_to do |format|
      if @newgreg.update(newgreg_params)
        format.html { redirect_to @newgreg, notice: "Newgreg was successfully updated." }
        format.json { render :show, status: :ok, location: @newgreg }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @newgreg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newgregs/1 or /newgregs/1.json
  def destroy
    @newgreg.destroy

    respond_to do |format|
      format.html { redirect_to newgregs_path, status: :see_other, notice: "Newgreg was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newgreg
      @newgreg = Newgreg.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def newgreg_params
      params.require(:newgreg).permit(:first_name, :last_name, :emails, :phone, :twitter)
    end
end
