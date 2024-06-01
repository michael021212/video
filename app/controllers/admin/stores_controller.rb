class Admin::StoresController < Admin::BaseController
  before_action :set_store, only: %i[ show edit update destroy ]

  # GET /admin/stores or /admin/stores.json
  def index
    @stores = Store.all
  end

  # GET /admin/stores/1 or /admin/stores/1.json
  def show
  end

  # GET /admin/stores/new
  def new
    @store = Store.new
  end

  # GET /admin/stores/1/edit
  def edit
  end

  # POST /admin/stores or /admin/stores.json
  def create
    @store = Store.new(store_params)

    respond_to do |format|
      if @store.save
        format.html { redirect_to store_url(@store), notice: "Store was successfully created." }
        format.json { render :show, status: :created, location: @store }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @store.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/stores/1 or /admin/stores/1.json
  def update
    respond_to do |format|
      if @store.update(store_params)
        format.html { redirect_to store_url(@store), notice: "Store was successfully updated." }
        format.json { render :show, status: :ok, location: @store }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @store.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/stores/1 or /admin/stores/1.json
  def destroy
    @store.destroy!

    respond_to do |format|
      format.html { redirect_to stores_url, notice: "Store was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_store
      @store = Store.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def store_params
      params.require(:store).permit(:name, :address, :lan, :lon)
    end
end
