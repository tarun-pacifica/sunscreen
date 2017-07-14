require 'rails_helper'

RSpec.describe FaqController, type: :controller do
  before {get :index}
  it "renders the :index view correctly" do
    expect(response.status).to eq(200)
  end
  it "returns a json object" do
    expect(response.content_type).to eq("application/json")
  end
  it "json object returns questions and answers" do
  	expect(JSON.parse(response.body).first.keys).to eq(["question", "answer"])
  end
end