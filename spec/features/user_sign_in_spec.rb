RSpec.describe "User Sign In", type: :feature do

  context "when user is logged in" do
    context "when user email is confirmed" do
      let(:user) { create :user, :confirmed }
      it "does not show an unconfirmed email message" do
        sign_in user
        visit root_path
        expect(page).not_to have_css(".unconfirmed_email")
        expect(user.authentication_token).not_to eq(nil)
        expect(user.role).not_to eq(nil)
      end
    end

    context "when user email is unconfirmed" do
      let(:user) { create :user, :unconfirmed }

      it "shows an unconfirmed email message" do
        sign_in user
        visit root_path
        expect(find(:css, ".unconfirmed_email").text)
          .to eq("Please confirm your email.")
      end
    end

    context "When user logs in with token" do
      let(:user) { create :user }

      it "Should validate the use based on their token" do

      visit user_path(user, auth_token: user.authentication_token)

      expect(find(:css, "h1").text)
        .to eq("Welcome #{user.first_name}")
      end
    end
end

end
