describe 'home page' do

  it "displays text" do
    visit '/'
    expect(page.current_path).to eq '/'
    expect(page).to have_content 'This is in my index file'
  end

  it "displays layout text" do
    visit '/'
    expect(page).to have_content 'This is in my application layout file'
  end

end
