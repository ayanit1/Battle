feature "attack other player" do
  it "attack player 2 and get confirmation" do
    sign_in_and_play
    click_button("attack")
    expect(page).not_to have_content "Mittens: 60HP"
    expect(page).to have_content("Mittens: 50HP")
  end

  it "allows us to return to /play" do
    sign_in_and_play
    click_button("attack")
    click_button("okay")
    expect(page).to have_content('Dave vs. Mittens')
  end
end
