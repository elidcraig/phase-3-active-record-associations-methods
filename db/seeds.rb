Song.delete_all
Genre.delete_all
Artist.delete_all

hotline_bling = Song.create(name: 'Hotline Bling')
thriller = Song.create(name: 'Thriller')

drake = Artist.create(name: 'Drake')
mj = Artist.create(name: 'Michael Jackson')

rap = Genre.create(name: 'Rap')
pop = Genre.create(name: 'Pop')
rock = Genre.create(name: 'Rock')

hotline_bling.artist = drake
thriller.artist = mj

drake.songs << hotline_bling
mj.songs << thriller

pop.songs << thriller
rap.songs << hotline_bling


# adding my own seed data
50.times do 
  artist = Artist.create(name: Faker::Music.band)

  rand(5..10).times do
    Song.create(
      name: Faker::Name.first_name,
      artist_id: artist.id,
      genre_id: [pop.id, rap.id, rock.id].sample
    )
  end
end