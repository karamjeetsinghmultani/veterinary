class CustomerPetsController < ApplicationController
  before_action :set_customer_pet, only: [:show, :edit, :update, :destroy]

  # GET /customer_pets
  # GET /customer_pets.json
  def index
    @customer_pets = CustomerPet.all
  end

  # GET /customer_pets/1
  # GET /customer_pets/1.json
  def show
  end

  # GET /customer_pets/new
  def new
    @customer_pet = CustomerPet.new
  end

  # GET /customer_pets/1/edit
  def edit
  end

  # POST /customer_pets
  # POST /customer_pets.json
  def create
    @customer_pet = CustomerPet.new(customer_pet_params)

    respond_to do |format|
      if @customer_pet.save
        format.html { redirect_to @customer_pet, notice: 'Customer pet was successfully created.' }
        format.json { render :show, status: :created, location: @customer_pet }
      else
        format.html { render :new }
        format.json { render json: @customer_pet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customer_pets/1
  # PATCH/PUT /customer_pets/1.json
  def update
    respond_to do |format|
      if @customer_pet.update(customer_pet_params)
        format.html { redirect_to @customer_pet, notice: 'Customer pet was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer_pet }
      else
        format.html { render :edit }
        format.json { render json: @customer_pet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_pets/1
  # DELETE /customer_pets/1.json
  def destroy
    @customer_pet.destroy
    respond_to do |format|
      format.html { redirect_to customer_pets_url, notice: 'Customer pet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_pet
      @customer_pet = CustomerPet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_pet_params
      params.require(:customer_pet).permit(:name, :type, :breed, :age, :weight, :date)
    end
end
