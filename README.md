To set this up for a Rails 3 app on Mac OS X or Linux (Ubuntu was tested) please follow the
procedure below.

Make sure bluepill is listed in your Gemfile and bundle it then:

    cd YOUR_RAILS_APP
    git submodule add git://github.com/johnae/rails_supervision.git runit ## or however you want to store this in your app
    cd YOUR_RAILS_APP/runit
    run install

you should now be able to run
    ./runit/bp status
    
above command will most probably be faster if you install bluepill through rubygems (at least if running
on ruby 1.9.2 which has a serious performance issue with require)

for bluepills status of your app

more importantly you should now be able to start and stop your app by running
    
    sv start APP_NAME
    sv stop APP_NAME
    sv restart APP_NAME
    sv hup APP_NAME ## this will send a USR2-signal to unicorn