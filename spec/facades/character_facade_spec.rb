require 'rails_helper'

RSpec.describe CharacterFacade do
  it "characters by affiliation" do
    characters = CharacterFacade.members_by_affiliation("Fire Nation")

    expect(characters).to be_a(Array)
    expect(characters.first).to be_instance_of(Character)
  end
end