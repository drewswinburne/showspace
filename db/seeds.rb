# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Artist.destroy_all
Show.destroy_all
Performance.destroy_all


newband = Artist.create(name: "All Ball", bio: "Cricket and Geoff", img_url: "https://img.buzzfeed.com/buzzfeed-static/static/2015-02/17/12/enhanced/webdr05/enhanced-buzz-8759-1424195616-28.jpg", music_url: "http://www.google.com")
coolband = Artist.create(name: "Beach House", bio: "Victoria and Alex", img_url: "http://beardedgentlemenmusic.com/wp-content/uploads/2015/08/Beach-House-Depression-Cherry-Pic.jpg", music_url: "http://www.google.com")
anyband = Artist.create(name: "Permenant Waves", bio: "Jeff's new band", img_url: "https://freemusicarchive.org/file/images/artists/Thank_You_-_2009113015626639.jpg?width=290&height=290", music_url: "http://www.google.com")
funband = Artist.create(name: "Evil Sword", bio: "Costume Band", img_url: "http://www.sgmgrecords.com/press-photos/evil-sword-02.jpg", music_url: "http://www.google.com")

firstshow = Show.create(flyer_img: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTf6BKDwvo1ujgr3qk6oSIM_luYzeuKLuqwgTprs-onFzdl3zQu",
date: "2016-11-20 7:00:00")
secondshow = Show.create(flyer_img: "http://www.michiganduckrescueandsanctuary.com/wp-content/uploads/2014/12/marold_donate_transparent_504.png",
date: "2016-11-21 9:00:00")
thirdshow = Show.create(flyer_img: "https://s-media-cache-ak0.pinimg.com/originals/6a/c9/dc/6ac9dcffc63e64d80b54cd2d8647cb02.jpg",
date: "2016-11-22 8:00:00")
fourthshow = Show.create(flyer_img: "http://i4.mirror.co.uk/incoming/article7220601.ece/ALTERNATES/s615/PAY-Donald-Trump-Duck.jpg",
date: "2016-11-23 7:00:00")


firstperf = Performance.create(artist_id: 1, show_id:1)
secondband = Performance.create(artist_id: 2, show_id:1)
secondshow = Performance.create(artist_id: 3, show_id:2)
secondshowotherband = Performance.create(artist_id: 4, show_id:2)
thirdshow = Performance.create(artist_id: 1, show_id:3)
thirdshowotherband = Performance.create(artist_id: 3, show_id:3)
fourthshow = Performance.create(artist_id: 2, show_id:4)
fourthshowotherband = Performance.create(artist_id: 4, show_id:4)
