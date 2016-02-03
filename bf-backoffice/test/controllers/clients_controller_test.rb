require 'test_helper'

class ClientsControllerTest < ActionController::TestCase
  setup do
    @client = clients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create client" do
    assert_difference('Client.count') do
      post :create, client: { address1: @client.address1, address2: @client.address2, agent_number: @client.agent_number, country: @client.country, county: @client.county, email: @client.email, first_name: @client.first_name, notes: @client.notes, post_code: @client.post_code, product: @client.product, status: @client.status, surname: @client.surname, telephone_number: @client.telephone_number, town: @client.town }
    end

    assert_redirected_to client_path(assigns(:client))
  end

  test "should show client" do
    get :show, id: @client
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @client
    assert_response :success
  end

  test "should update client" do
    patch :update, id: @client, client: { address1: @client.address1, address2: @client.address2, agent_number: @client.agent_number, country: @client.country, county: @client.county, email: @client.email, first_name: @client.first_name, notes: @client.notes, post_code: @client.post_code, product: @client.product, status: @client.status, surname: @client.surname, telephone_number: @client.telephone_number, town: @client.town }
    assert_redirected_to client_path(assigns(:client))
  end

  test "should destroy client" do
    assert_difference('Client.count', -1) do
      delete :destroy, id: @client
    end

    assert_redirected_to clients_path
  end
end
