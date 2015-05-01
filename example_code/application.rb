
class Application
  # ...

  def hiring_managers_name
    "Hiring Manager : " + hiring_manager.full_name
  end
end

describe "#hiring_managers_name" do
  it "returns hiring_managers full name" do
    application = create(:application)

    expect(
      application.hiring_managers_name
    ).to eq "Hiring Manager : Serge Backflip"
  end
end


class ApplicationController
  def accept
    # ...

    application.hire(application_details)
  end
end

it "accepts application" do
  allow(application).to receive(:hire).and_call_original
end
