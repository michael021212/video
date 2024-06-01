class Admin::MachinesController < Admin::BaseController
  before_action :set_machine, only: %i[ show edit update destroy ]

  # GET /admin/machines or /admin/machines.json
  def index
    @machines = Machine.all
  end

  # GET /admin/machines/1 or /admin/machines/1.json
  def show
  end

  # GET /admin/machines/new
  def new
    @machine = Machine.new
  end

  # GET /admin/machines/1/edit
  def edit
  end

  # POST /admin/machines or /admin/machines.json
  def create
    @machine = Machine.new(machine_params)

    respond_to do |format|
      if @machine.save
        format.html { redirect_to admin_machine_url(@machine), notice: "Machine was successfully created." }
        format.json { render :show, status: :created, location: @machine }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @machine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/machines/1 or /admin/machines/1.json
  def update
    respond_to do |format|
      if @machine.update!(machine_params)
        format.html { redirect_to admin_machine_url(@machine), notice: "Machine was successfully updated." }
        format.json { render :show, status: :ok, location: @machine }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @machine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/machines/1 or /admin/machines/1.json
  def destroy
    @machine.destroy!

    respond_to do |format|
      format.html { redirect_to admin_machines_url, notice: "Machine was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_machine
      @machine = Machine.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def machine_params
      params.require(:machine).permit(:store_id, :theme)
    end
end
