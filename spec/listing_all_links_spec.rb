feature 'User browses the list of links' do

  # using the additional tests we have put in spec_helper
  before(:each) do
    Link.create(url: 'http://www.makersacademy.com',
                title: 'Makers Academy')
  end

  scenario 'when opening the home page' do
    visit '/'
    expect(page).to have_content('Makers Academy')
  end
end