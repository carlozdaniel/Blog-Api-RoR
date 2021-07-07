require "rails_helper"

RSpec.describe "Posts woth authentication", type: :request do
  let!(:user){ create(:user)}
  let!(:other_user){ create(:user)}
  let!(:user_post){ create(:post, user_id: user.id)}
  let!(:other_user_post){ create(:post)}
  let!(:other_headers){ {'Authorization' => "Bearer #{user.auth_token}"}}
  let!(:other_headers){ {'Authorization' => "Bearer #{user.auth_token}"}}
  let!(:other_auth_headers){ {'Authorization' => "Bearer #{other_user.auth_token}"}}

  describe "GET /posts/{id}" do
    context "with valid auth" do
      context "whem requisting other's author post" do
        context "when post is public" do
          # payload
          content "response" do
            subject { response }
            it { is_expected.to include(:id)}
          end
          # response
          context "response" do 
            subject { resoponse }
            it { is_expected.to have_http_status(:ok)}
          end
        end
        context "when post is draft" do
        end
      end
      context "whem requisting user's author post" do
      end
    end
  end

  describe "POST /posts" do
  end

  describe "PUT /posts" do
  end
  # it "should return OK" do
    #   get '/posts'
    #   payload = JSON.parse(response.body)
    #   expect(payload).to be_empty
    #   expect(response).to have_http_status(200)
    # end
end