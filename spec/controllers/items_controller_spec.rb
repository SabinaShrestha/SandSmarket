require 'rails_helper'

RSpec.describe ItemsController, type: :controller do

  let(:item){Item.create!(price: 1000)}

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
      get :create, item: {price: 1000}
      expect(response).to have_http_status(:redirect)
    end

    it 'does not create' do
      get :create, item: {price: nil}
      expect(Category.all.count).to eq(0)
      expect(flash[:error]).to be_present
      expect(response).to render_template('create')

    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit, id:item.id
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, id:item.id
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #update" do
    it "returns http success" do
      get :update, id:item.id
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #destroy" do
    it "returns http success" do
      get :destroy, id:item.id
      expect(response).to have_http_status(:success)
    end
  end

end
