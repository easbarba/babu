FROM ruby:3.1.2-bullseye

MAINTAINER EAS Barbosa <easbarba@outlook.com>

ENV SYSTEM_PACKAGES='apt-transport-https curl' \
    PROJECT_PACKAGES='imagemagick' \
    FRONT_PACKAGES='nodejs'

# Front-end tooling
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash -

RUN apt-get update -yqq && \
    apt-get install -yqq --no-install-recommends $SYSTEM_PACKAGES $PROJECT_PACKAGES $FRONT_PACKAGES

WORKDIR /app

# Rails dependencies
COPY Gemfile* ./
RUN gem install bundler --conservative && bundle check || bundle install


# Front-end dependencies
COPY package.json yarn.lock ./
RUN npm i -g yarn

# All files
COPY . ./

ENTRYPOINT ["./docker-entrypoint.sh"]
CMD ["bin/rails", "s", "-b", "0.0.0.0"]
