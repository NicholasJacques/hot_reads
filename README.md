# Hot Reads

### What is it?

This is a companion application to URLockbox. It tracks links that have been marked read and ranks them by popularity. Users can view the current top ten links by visiting the root path.  In addition to this view, the application has two API endpoints.

### Links and Repos:

[Hot Reads Production](https://ndj-hot-reads.herokuapp.com/)
[URLockbox Production](https://secret-ocean-16532.herokuapp.com)
[URLockbox Repo](https://github.com/NicholasJacques/URLockbox)

### API:

This application has two endpoints:

`GET /api/v1/reads`
- This endpoint returns the top 10 links in an array, ordered by popularity with index 0 being the most popular.

`POST /api/v1/reads Params: { link: { url: "http://www.sample.com, user_id: } }`
- This endpoint will look for a matching url in the urls database and create a record of a 'read' for that url. If the url does not yet exists, it will create that url and a record of the 'read.'

### Set up:

Hot Reads is built with:

`Rails v5.1.2`
`Ruby v2.3.1`

To install this application:

```bash
$ git clone git@github.com:NicholasJacques/hot_reads.git
$ cd hot_reads
$ bundle install
$ rake db:create
$ rake db:migrate
```

Run tests with:

```bash
$ rspec
````

### Author
Nicholas Jacques