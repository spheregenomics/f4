require 'test_helper'

class LayoutFieldsControllerTest < ActionController::TestCase
  setup do
    @layout_field = layout_fields(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:layout_fields)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create layout_field" do
    assert_difference('LayoutField.count') do
      post :create, layout_field: { field_name: @layout_field.field_name, field_value: @layout_field.field_value, version: @layout_field.version }
    end

    assert_redirected_to layout_field_path(assigns(:layout_field))
  end

  test "should show layout_field" do
    get :show, id: @layout_field
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @layout_field
    assert_response :success
  end

  test "should update layout_field" do
    put :update, id: @layout_field, layout_field: { field_name: @layout_field.field_name, field_value: @layout_field.field_value, version: @layout_field.version }
    assert_redirected_to layout_field_path(assigns(:layout_field))
  end

  test "should destroy layout_field" do
    assert_difference('LayoutField.count', -1) do
      delete :destroy, id: @layout_field
    end

    assert_redirected_to layout_fields_path
  end
end
