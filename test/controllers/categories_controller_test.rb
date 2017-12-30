require 'test_helper'

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @category = categories(:one)
    @cat_no_products = categories(:three)
    @new_category = Category.new(name: 'NewName')
  end

  test "should get index" do
    get categories_url
    assert_response :success
  end

  test "should get new" do
    get new_category_url
    assert_response :success
  end

  test "should create category" do
    assert_difference('Category.count') do
      post categories_url, params: { category: { name: @new_category.name } }
    end

    assert_redirected_to category_url(Category.last)
  end

  test "should show category" do
    get category_url(@category)
    assert_response :success
  end

  test "should get edit" do
    get edit_category_url(@category)
    assert_response :success
  end

  test "should update category" do
    patch category_url(@category), params: { category: { name: @category.name } }
    assert_redirected_to category_url(@category)
  end

  test "should destroy category" do
    assert_difference('Category.count', -1) do
      delete category_url(@cat_no_products)
    end

    assert_redirected_to categories_url
  end

  test "should not destroy category" do
    assert_difference('Category.count', 0) do
      delete category_url(@category)
    end

    assert_redirected_to category_url(@category)
  end
end
