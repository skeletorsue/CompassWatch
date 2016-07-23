FROM ruby:latest
MAINTAINER Chris Staley "skeletorsue@gmail.com"

RUN gem update --system
RUN gem install compass
RUN gem install sass
RUN gem install susy

VOLUME [ "/theme" ]
WORKDIR "/theme"
ENTRYPOINT [ "/usr/local/bundle/bin/compass" ]
CMD [ "watch" ]
