require_relative '../model/music_album'

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

  context 'Parse music album instance to JSON' do
    it 'Change object to JSON' do
      g = MusicAlbum.new('2020/12/12', true, 1232, false)
      date = Date.parse('2020/12/12')
      the_json = {
        publish_date: date,
        on_spotify: true,
        id: 1232,
        archived: false
      }
      expect(g.to_json).to eq(the_json)
    end
  end
end
