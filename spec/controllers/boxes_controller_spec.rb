require 'rails_helper'

RSpec.describe BoxesController, type: :controller do
  before {get :index}
  it "renders the :index view correctly" do
    expect(response.status).to eq(200)
  end
  it "returns a html object" do
    expect(response.content_type).to eq("application/html")
  end
  it "html contains questions and answers" do
  	# byebug
  	# expect(JSON.parse(response.body).first.keys).to eq(["question", "answer"])
  end

end