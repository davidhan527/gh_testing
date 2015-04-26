
class Application
  # ...

  def hiring_managers_name
    "Hiring Manager : " + hiring_manager.full_name
  end
end

describe "#hiring_managers_name" do
  it "returns hiring_managers full name" do
    application = create(:application)

    expect(application.hiring_manager).to receive(:full_name)
    expect(
      application.hiring_managers_name
    ).to eq "Hiring Manager : Serge Backflip"
  end
end



