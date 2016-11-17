```
Artists have many => performances
                      V
                      |
                      ^
Shows have many => performances

Artists >---< Shows

```

Artist properties:
* name
* bio
* img_url
* music_url

Performance properties:
* artist_id
* show_id

Show properties:
* venue
* cost
* flyer_img
* starts_at_date
* starts_at_hour
