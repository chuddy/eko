require 'test_helper'

class AdContactsControllerTest < ActionController::TestCase
  setup do
    @ad_contact = ad_contacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ad_contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ad_contact" do
    assert_difference('AdContact.count') do
      post :create, ad_contact: { comment: @ad_contact.comment, email: @ad_contact.email, name: @ad_contact.name, phone: @ad_contact.phone }
    end

    assert_redirected_to ad_contact_path(assigns(:ad_contact))
  end

  test "should show ad_contact" do
    get :show, id: @ad_contact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ad_contact
    assert_response :success
  end

  test "should update ad_contact" do
    put :update, id: @ad_contact, ad_contact: { comment: @ad_contact.comment, email: @ad_contact.email, name: @ad_contact.name, phone: @ad_contact.phone }
    assert_redirected_to ad_contact_path(assigns(:ad_contact))
  end

  test "should destroy ad_contact" do
    assert_difference('AdContact.count', -1) do
      delete :destroy, id: @ad_contact
    end

    assert_redirected_to ad_contacts_path
  end
end
