require 'test_helper'

class MediaCatagoriesControllerTest < ActionController::TestCase
  setup do
    @media_catagory = media_catagories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:media_catagories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create media_catagory" do
    assert_difference('MediaCatagory.count') do
      post :create, media_catagory: { description: @media_catagory.description, media_cat: @media_catagory.media_cat, seq: @media_catagory.seq, version: @media_catagory.version }
    end

    assert_redirected_to media_catagory_path(assigns(:media_catagory))
  end

  test "should show media_catagory" do
    get :show, id: @media_catagory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @media_catagory
    assert_response :success
  end

  test "should update media_catagory" do
    put :update, id: @media_catagory, media_catagory: { description: @media_catagory.description, media_cat: @media_catagory.media_cat, seq: @media_catagory.seq, version: @media_catagory.version }
    assert_redirected_to media_catagory_path(assigns(:media_catagory))
  end

  test "should destroy media_catagory" do
    assert_difference('MediaCatagory.count', -1) do
      delete :destroy, id: @media_catagory
    end

    assert_redirected_to media_catagories_path
  end
end
