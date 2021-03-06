# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Film.delete_all

Film.create!(title: 'Memento',
  director: 'Christopher Nolan' ,
  year:2000 ,
  plot: 
    %{
        Memento chronicles two separate stories of Leonard, an ex-insurance investigator who can no longer build new memories, as he attempts to find the murderer of his wife, which is the last thing he remembers. One story line moves forward in time while the other tells the story backwards revealing more each time. 
      },
  image: 'memento.jpg',    
  rating: 1)

Film.create!(title: 'Dark Knight',
  director: 'Christopher Nolan' ,
  year:2008 ,
  plot: 
    %{
Batman raises the stakes in his war on crime. With the help of Lieutenant Jim Gordon and District Attorney Harvey Dent, Batman sets out to dismantle the remaining criminal organizations that plague the city streets. The partnership proves to be effective, but they soon find themselves prey to a reign of chaos unleashed by a rising criminal mastermind known to the terrified citizens of Gotham as The Joker.
      },
  image: 'darkknight.jpg',    
  rating: 1)

Film.create!(title: '12 Angry Men',
  director: 'Sydney Lument' ,
  year:1957 ,
  plot: 
    %{
The defense and the prosecution have rested and the jury is filing into the jury room to decide if a young man is guilty or innocent of murdering his father. What begins as an open-and shut-case of murder soon becomes a detective story that presents a succession of clues creating doubt, and a mini-drama of each of the jurors' prejudices and preconceptions about the trial, the accused, and each other. Based on the play, all of the action takes place on the stage of the jury room.
      },
  image: '12angrymen.jpg',    
  rating: 1)

User.delete_all

User.create!(name: 'ultan', password: 'password')




