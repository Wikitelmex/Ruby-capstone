require_relative '../model/genre'

describe Genre do
    context "Genre Initialization" do
        it "#new without id" do
            g = Genre.new ('something')
            expect(g).to be_a Genre
        end

        it "#new with id" do
            g = Genre.new 'something', 123
            expect(g).to be_a Genre
        end
    end
end