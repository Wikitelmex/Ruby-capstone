require_relative '../model/music_album'

class MusicAlbumView
    def self.read_all(music_album)
        puts "#{music_album.publish_date} On spotify: #{music_album.on_spotify}"
    end

    def self.create
        puts "to create a music album enter a publish date"
        date = gets.chomp.to_s
        puts "is it available in spotify? [Y/N]"
        response = gets.chomp.downcase
        if response == 'y' 
            spotify = true
        elsif response == 'n'
            spotify = false
        end
        MusicAlbum.new(date, spotify)
    end
end
