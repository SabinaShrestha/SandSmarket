require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do

  let(:category){Category.create!(name: 'home')}

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #create" do
    it "returns http success" do
      get :create, category:{name: 'name', description: "description"}
      expect(response).to have_http_status(:redirect)
    end

    it 'does not create' do
      get :create, category: {name: nil}
      expect(Category.all.count).to eq(0)
      expect(flash[:error]).to be_present
      expect(response).to render_template('create')

    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit, id:category.id
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, id:category.id
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #update" do
    it "returns http success" do
      get :update, id:category.id
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #destroy" do
    it "returns http success" do
      get :destroy, id:category.id
      expect(response).to have_http_status(:success)
    end
  end

end
