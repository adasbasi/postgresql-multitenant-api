# postgresql + multitenant + api

```bash
$ git clone git@github.com:adasbasi/postgresql-multitenant-api.git
$ cd postgresql-multitenant-api
$ bundle install
$ rake db:setup
$ rake db:seed
$ rails s -p 3001

$ curl --referer http://ali.vcap.me:3001 http://api.vcap.me:3001/v1/projects
```
