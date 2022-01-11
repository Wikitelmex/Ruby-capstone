require_relative '../model/genre'

describe Genre do
    context "Genre Initialization" do
        it "#new" do
            g = Genre.new ('something')
            expect(g).to be_a Genre
        end
    end
end