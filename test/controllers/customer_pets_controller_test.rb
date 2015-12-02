require 'test_helper'

class CustomerPetsControllerTest < ActionController::TestCase
  setup do
    @customer_pet = customer_pets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customer_pets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer_pet" do
    assert_difference('CustomerPet.count') do
      post :create, customer_pet: { age: @customer_pet.age, breed: @customer_pet.breed, data: @customer_pet.data, name: @customer_pet.name, type: @customer_pet.type, weight: @customer_pet.weight }
    end

    assert_redirected_to customer_pet_path(assigns(:customer_pet))
  end

  test "should show customer_pet" do
    get :show, id: @customer_pet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer_pet
    assert_response :success
  end

  test "should update customer_pet" do
    patch :update, id: @customer_pet, customer_pet: { age: @customer_pet.age, breed: @customer_pet.breed, data: @customer_pet.data, name: @customer_pet.name, type: @customer_pet.type, weight: @customer_pet.weight }
    assert_redirected_to customer_pet_path(assigns(:customer_pet))
  end

  test "should destroy customer_pet" do
    assert_difference('CustomerPet.count', -1) do
      delete :destroy, id: @customer_pet
    end

    assert_redirected_to customer_pets_path
  end
end
