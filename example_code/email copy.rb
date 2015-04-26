



describe "#update_name" do
  it "updates name and creates a changelog entry" do
    department = create(:department)

    expect { department.update_name("Engineering") }.
     to change { department.name }.
       from("Web Development").
       to("Engineering")

    # make an assertion about the db for ChangeLog?
  end
end





























