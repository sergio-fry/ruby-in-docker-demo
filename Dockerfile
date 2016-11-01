FROM ruby:2.3

RUN mkdir /app
WORKDIR /app

COPY Gemfile* ./
RUN bundle install
COPY . .

EXPOSE 3000
CMD ["rackup", "--host", "0.0.0.0", "-p", "3000"]
