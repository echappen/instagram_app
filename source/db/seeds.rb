photos_1 = [
  ["http://scontent-a.cdninstagram.com/hphotos-xfa1/t51.2885-15/e15/10890983_670429383073677_185424576_n.jpg",
    "http://instagram.com/p/xE6IO5kX3B/"
  ],
  ["http://scontent-a.cdninstagram.com/hphotos-xfa1/t51.2885-15/e15/10727389_407097629442658_708179675_n.jpg",
    "http://instagram.com/p/t_nk_bkXxo/"
  ]
]

photos_2 = [
  ["http://scontent-b.cdninstagram.com/hphotos-xpa1/t51.2885-15/e15/10514063_1474309819523176_2066253700_n.jpg",
    "http://instagram.com/p/t83cUjEX3M/"
  ],
  ["http://scontent-a.cdninstagram.com/hphotos-xpa1/t51.2885-15/e15/10723670_1486368244950188_252779503_n.jpg",
    "http://instagram.com/p/t6oUUfEX1I/"
  ]
]

photos_3 = [
  ["http://scontent-b.cdninstagram.com/hphotos-xaf1/t51.2885-15/e15/10601850_556475427786914_195803782_n.jpg",
    "http://instagram.com/p/s74aJLkX1D"
  ],
  ["http://scontent-b.cdninstagram.com/hphotos-xap1/t51.2885-15/e15/10683989_542710202528161_2049257355_n.jpg",
    "http://instagram.com/p/s73rwQkXzu"
  ]
]

photos_4 = [
  ["http://scontent-a.cdninstagram.com/hphotos-xfa1/t51.2885-15/e15/10707136_1466063887014279_1074434081_n.jpg",
    "http://instagram.com/p/s73dsrkXzR"
  ],
  ["http://scontent-a.cdninstagram.com/hphotos-xap1/t51.2885-15/e15/10584795_689275907814790_398017798_n.jpg",
    "http://instagram.com/p/r3BdDjEX0X"
  ]
]

me = User.create(name: "Eleni Chappen", email: "elenichappen@gmail.com", password: "password")

marfa = Album.create( user_id: 1, name: "Trip to Marfa", description: "Our road trip to Marfa, Texas in December 2014")

pa = Album.create( user_id: 1, name: "A Pennsylvania Christmas", description: "Coming home to New Berlin, Pennsylvania")

san_antonio = Album.create( user_id: 1, name: "Remember the Alamo", description: "San Antonio, Texas, 2013")

florida = Album.create( user_id: 1, name: "Florida", description: "Ft. Lauderdale, Miami, Perez Art Museum")

photos_1.each do |link|
  p = Photo.create(user_id: 1, photo_url: link[0], instagram_url: link[1], selected: 0)
  PhotoAlbum.create(photo_id: p.id, album_id: marfa.id)
end

photos_2.each do |link|
  p = Photo.create(user_id: 1, photo_url: link[0], instagram_url: link[1], selected: 0)
  PhotoAlbum.create(photo_id: p.id, album_id: pa.id)
end

photos_3.each do |link|
  p = Photo.create(user_id: 1, photo_url: link[0], instagram_url: link[1], selected: 0)
  PhotoAlbum.create(photo_id: p.id, album_id: san_antonio.id)
end

photos_4.each do |link|
  p = Photo.create(user_id: 1, photo_url: link[0], instagram_url: link[1], selected: 0)
  PhotoAlbum.create(photo_id: p.id, album_id: florida.id)
end




