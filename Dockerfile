FROM ruby:3.0.1

RUN apt-get update -qq && apt-get install -y build-essential postgresql-client libpq-dev

ENV APP_HOME /OneBitFood
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD . $APP_HOME

RUN bundle install
ENTRYPOINT ["sh", "./entrypoint.sh"]
EXPOSE 3001

CMD ["rails", "server", "-b", "0.0.0.0"]
