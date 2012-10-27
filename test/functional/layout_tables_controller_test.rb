require 'test_helper'

class LayoutTablesControllerTest < ActionController::TestCase
  setup do
    @layout_table = layout_tables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:layout_tables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create layout_table" do
    assert_difference('LayoutTable.count') do
      post :create, layout_table: { col1: @layout_table.col1, col2: @layout_table.col2, col3: @layout_table.col3, col4: @layout_table.col4, row_num: @layout_table.row_num, table_number: @layout_table.table_number, version: @layout_table.version }
    end

    assert_redirected_to layout_table_path(assigns(:layout_table))
  end

  test "should show layout_table" do
    get :show, id: @layout_table
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @layout_table
    assert_response :success
  end

  test "should update layout_table" do
    put :update, id: @layout_table, layout_table: { col1: @layout_table.col1, col2: @layout_table.col2, col3: @layout_table.col3, col4: @layout_table.col4, row_num: @layout_table.row_num, table_number: @layout_table.table_number, version: @layout_table.version }
    assert_redirected_to layout_table_path(assigns(:layout_table))
  end

  test "should destroy layout_table" do
    assert_difference('LayoutTable.count', -1) do
      delete :destroy, id: @layout_table
    end

    assert_redirected_to layout_tables_path
  end
end
