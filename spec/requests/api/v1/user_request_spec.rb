require "rails_helper"

describe "Users endpoints", type: :request do
  describe "GET all users" do
    it "returns all users" do
      user1 = User.create!(
        first_name: "John",
        last_name: "Doe",
        email: "john@yahoo.com"
      )
      user2 = User.create!(
        first_name: "Jane",
        last_name: "Doe",
        email: "deer@aol.com"
      )
      get "/api/v1/users"

      expect(response).to be_successful

      data = JSON.parse(response.body, symbolize_names: true)[:data]

      expect(data).to be_a(Array)
      expect(data.size).to eq(2)

      user_data = data.first[:attributes]
      expect(user_data[:first_name]).to eq(user1.first_name)
      expect(user_data[:last_name]).to eq(user1.last_name)
      expect(user_data[:email]).to eq(user1.email)

      user_data = data.second[:attributes]
      expect(user_data[:first_name]).to eq(user2.first_name)
      expect(user_data[:last_name]).to eq(user2.last_name)
      expect(user_data[:email]).to eq(user2.email)
    end

    it "returns an empty array if no users exist" do
      get "/api/v1/users"
      expect(response).to be_successful

      data = JSON.parse(response.body, symbolize_names: true)[:data]
      expect(data).to eq([])
    end
  end
end
