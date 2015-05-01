class Email
  # ...

  def email_with_type
    "#{email} (#{type})"
  end

  private
    def type
      email_address_type.name
    end
end


describe "#email_with_type" do
  it "returns email with type" do
    email = Email.new(:email => "test@example.com")

    expect(email).to receive(:type)
    expect(
      email.email_with_type
    ).to eq "test@example.com (personal)"
  end
end

describe "#type" do
  it "finds the type of the email" do
    email = Email.new(:email => "test@example.com")

    expect(email.send(:type)).to eq "personal"
  end
end






