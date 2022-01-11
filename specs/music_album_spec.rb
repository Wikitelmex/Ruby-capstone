require_relative '../model/music_album.rb'

describe MusicAlbum do
    context 'Initialization tests for music album' do
        it '#new without id and archived' do
            music_album = MusicAlbum.new '12/12/2020', true
            expect(music_album).to be_a MusicAlbum
        end

        it '#new with id and archived' do
            music_album = MusicAlbum.new '12/12/2020', true, '1293', archived: true
            expect(music_album).to be_a MusicAlbum
        end
    end

end