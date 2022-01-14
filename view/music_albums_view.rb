require_relative '../model/music_album'

class MusicAlbumView
  def self.read_all(music_album)
    puts "#{music_album.publish_date} On spotify: #{music_album.on_spotify}"
  end

  def self.create(labels)
    mlabel = LabelView.new_label
    puts 'enter a publish date [YYYY/MM/DD]'
    date = gets.chomp.to_s
    puts 'is it available in spotify? [Y/N]'
    response = gets.chomp.downcase
    case response
    when 'y'
      spotify = true
    when 'n'
      spotify = false
    end
    labels << mlabel
    m = MusicAlbum.new(date, spotify)
    m.label = mlabel
    m
  end
end
