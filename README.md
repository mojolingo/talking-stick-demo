== README

The recommended target for development and deployment is Docker. Included in this example application is the appropriate structure to use Docker for a complete development environment. The basic steps to get the app running are:

* Install docker-compose (`brew install docker-compose`)
* Run `$ boot2docker init`
* Run `$ boot2docker up`
* Boot the app and its dependencies (`docker-compose up`)
* Create the database (`docker-compose run web bundle exec rake db:setup`)
* Load the app in a browser (`open http://\`boot2docker ip\`:3000`)

It is, however, by no means necessary to use Docker to build a Talking Stick app. It is perfectly possible to use whatever workflow you are used to when building Rails applications, with or without Docker. The basic requirements for this application are simply Postgres and a Ruby VM matching the version in `Gemfile`.
