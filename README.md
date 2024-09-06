
```
$ git push heroku
Enumerating objects: 6, done.
Counting objects: 100% (6/6), done.
Delta compression using up to 12 threads
Compressing objects: 100% (5/5), done.
Writing objects: 100% (6/6), 829 bytes | 829.00 KiB/s, done.
Total 6 (delta 0), reused 0 (delta 0), pack-reused 0
remote: Updated 4 paths from 57bf784
remote: Compressing source files... done.
remote: Building source:
^[[Hremote:
remote: -----> Building on the Heroku-22 stack
remote: -----> Determining which buildpack to use for this app
remote: -----> Ruby app detected
remote: -----> Installing bundler 2.5.6
remote: -----> Removing BUNDLED WITH version in the Gemfile.lock
remote: -----> Compiling Ruby/Rack
remote:
remote: ###### WARNING:
remote:
remote:        No ruby version specified in the Gemfile.lock
remote:
remote:        We could not determine the version of Ruby from your Gemfile.lock.
remote:
remote:          $ bundle platform --ruby
remote:          No ruby version specified
remote:
remote:          $ bundle -v
remote:          Bundler version 2.5.6
remote:
remote:
remote:        Ensure the above command outputs the version of Ruby you expect. If you have a ruby version specified in your Gemfile, you can update the Gemfile.lock by running the following command:
remote:
remote:          $ bundle update --ruby
remote:
remote:        Make sure you commit the results to git before attempting to deploy again:
remote:
remote:          $ git add Gemfile.lock
remote:          $ git commit -m "update ruby version"
remote:
remote: -----> Using Ruby version: ruby-3.1.6
remote: -----> Installing dependencies using bundler 2.5.6
remote:        Running: BUNDLE_WITHOUT='development:test' BUNDLE_PATH=vendor/bundle BUNDLE_BIN=vendor/bundle/bin BUNDLE_DEPLOYMENT=1 bundle install -j4
remote:        Fetching gem metadata from https://rubygems.org/....
remote:        Fetching base64 0.2.0
remote:        Fetching rack 3.1.7
remote:        Fetching tilt 2.4.0
remote:        Fetching webrick 1.8.1
remote:        Installing tilt 2.4.0
remote:        Installing webrick 1.8.1
remote:        Installing rack 3.1.7
remote:        Fetching mustermann 3.0.3
remote:        Installing mustermann 3.0.3
remote:        Installing base64 0.2.0
remote:        Fetching rack-session 2.0.0
remote:        Fetching rack-protection 4.0.0
remote:        Fetching rackup 2.1.0
remote:        Installing rack-session 2.0.0
remote:        Installing rack-protection 4.0.0
remote:        Installing rackup 2.1.0
remote:        Fetching sinatra 4.0.0
remote:        Installing sinatra 4.0.0
remote:        Bundle complete! 4 Gemfile dependencies, 11 gems now installed.
remote:        Gems in the groups 'development' and 'test' were not installed.
remote:        Bundled gems are installed into `./vendor/bundle`
remote:        Bundle completed (1.00s)
remote:        Cleaning up the bundler cache.
remote: -----> Detecting rake tasks
remote:
remote: ###### WARNING:
remote:
remote:        No ruby version specified in the Gemfile.lock
remote:
remote:        We could not determine the version of Ruby from your Gemfile.lock.
remote:
remote:          $ bundle platform --ruby
remote:          No ruby version specified
remote:
remote:          $ bundle -v
remote:          Bundler version 2.5.6
remote:
remote:
remote:        Ensure the above command outputs the version of Ruby you expect. If you have a ruby version specified in your Gemfile, you can update the Gemfile.lock by running the following command:
remote:
remote:          $ bundle update --ruby
remote:
remote:        Make sure you commit the results to git before attempting to deploy again:
remote:
remote:          $ git add Gemfile.lock
remote:          $ git commit -m "update ruby version"
remote:
remote: ###### WARNING:
remote:
remote:        You have not declared a Ruby version in your Gemfile.
remote:
remote:        To declare a Ruby version add this line to your Gemfile:
remote:
remote:        ```
remote:        ruby "3.1.6"
remote:        ```
remote:
remote:        For more information see:
remote:          https://devcenter.heroku.com/articles/ruby-versions
remote:
remote: ###### WARNING:
remote:
remote:        No Procfile detected, using the default web server.
remote:        We recommend explicitly declaring how to boot your server process via a Procfile.
remote:        https://devcenter.heroku.com/articles/ruby-default-web-server
remote:
remote:
remote: -----> Discovering process types
remote:        Procfile declares types     -> (none)
remote:        Default types for buildpack -> console, rake, web
remote:
remote: -----> Compressing...
remote:        Done: 21.3M
remote: -----> Launching...
remote:        Released v4
remote:        https://cryptic-chamber-68986-4d6ffb7484e2.herokuapp.com/ deployed to Heroku
remote:
remote: This app is using the Heroku-22 stack, however a newer stack is available.
remote: To upgrade to Heroku-24, see:
remote: https://devcenter.heroku.com/articles/upgrading-to-the-latest-stack
```

```
$ heroku logs
2024-09-06T18:06:56.002741+00:00 heroku[web.1]: Starting process with command `bundle exec rackup config.ru -p ${PORT:-5000}`
2024-09-06T18:06:56.866460+00:00 app[web.1]: [2024-09-06 18:06:56] INFO  WEBrick 1.8.1
2024-09-06T18:06:56.866498+00:00 app[web.1]: [2024-09-06 18:06:56] INFO  ruby 3.1.6 (2024-05-29) [x86_64-linux]
2024-09-06T18:06:56.866714+00:00 app[web.1]: [2024-09-06 18:06:56] INFO  WEBrick::HTTPServer#start: pid=2 port=11976
2024-09-06T18:06:57.088047+00:00 heroku[web.1]: State changed from starting to up
2024-09-06T18:07:00.481049+00:00 heroku[router]: at=info method=GET path="/" host=cryptic-chamber-68986-4d6ffb7484e2.herokuapp.com request_id=654aefe1-993a-4a9b-9f0f-d72493618aa4 fwd="13.110.54.15" dyno=web.1 connect=0ms service=8ms status=200 bytes=287 protocol=https
2024-09-06T18:07:00.679180+00:00 heroku[router]: at=info method=GET path="/favicon.ico" host=cryptic-chamber-68986-4d6ffb7484e2.herokuapp.com request_id=c202c311-30b1-41ed-8f8f-9849e5fc152a fwd="13.110.54.15" dyno=web.1 connect=0ms service=1ms status=404 bytes=318 protocol=https
```
