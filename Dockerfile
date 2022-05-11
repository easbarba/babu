FROM docker.io/library/ruby:3.1.2-alpine3.15

MAINTAINER EAS Barbosa <easbarba@outlook.com>

ENV SYSTEM_PACKAGES='build-base curl' \
    PROJECT_PACKAGES='tzdata postgresql-dev imagemagick' \
    FRONT_PACKAGES=' nodejs yarn'

RUN apk add --update $SYSTEM_PACKAGES $PROJECT_PACKAGES $FRONT_PACKAGES

WORKDIR /app

# Rails dependencies
COPY Gemfile* ./
RUN bundle install

# All files
COPY . ./

ENTRYPOINT ["./docker-entrypoint.sh"]
CMD ["bin/rails", "s", "-b", "0.0.0.0"]
