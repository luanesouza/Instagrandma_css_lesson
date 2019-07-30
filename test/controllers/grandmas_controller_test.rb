require 'test_helper'

class GrandmasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grandma = grandmas(:one)
  end

  test "should get index" do
    get grandmas_url
    assert_response :success
  end

  test "should get new" do
    get new_grandma_url
    assert_response :success
  end

  test "should create grandma" do
    assert_difference('Grandma.count') do
      post grandmas_url, params: { grandma: { img_url: @grandma.img_url, name: @grandma.name, password: @grandma.password, username: @grandma.username } }
    end

    assert_redirected_to grandma_url(Grandma.last)
  end

  test "should show grandma" do
    get grandma_url(@grandma)
    assert_response :success
  end

  test "should get edit" do
    get edit_grandma_url(@grandma)
    assert_response :success
  end

  test "should update grandma" do
    patch grandma_url(@grandma), params: { grandma: { img_url: @grandma.img_url, name: @grandma.name, password: @grandma.password, username: @grandma.username } }
    assert_redirected_to grandma_url(@grandma)
  end

  test "should destroy grandma" do
    assert_difference('Grandma.count', -1) do
      delete grandma_url(@grandma)
    end

    assert_redirected_to grandmas_url
  end
end
