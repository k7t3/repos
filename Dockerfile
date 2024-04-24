FROM ruby:3.0.6

EXPOSE 4000

WORKDIR /srv/jekyll

COPY . /srv/jekyll/

RUN gem install bundler && bundle install && bundle add webrick

CMD bundle exec jekyll serve -H 0.0.0.0 -t
