class UserEmailer
  def initialize(user)
    @user = user
  end

  def email
    send_email_to(user.email)
  end
end

it "sends email to user" do
  user = create(:user)
  user_emailer = UserEmailer.new(user)

  expect(user_emailer.send_email_to(user.email)).to have_body_text(
    # email body contents
  )
end
