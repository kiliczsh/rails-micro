# Use the official Ruby image as the base image
FROM ruby:3.2.2-alpine

# Set the working directory
WORKDIR /private_api

# Install system dependencies
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

# Copy the Gemfile and Gemfile.lock
COPY Gemfile* ./

# Install Ruby gems
RUN bundle install

# Copy the application code
COPY . .

# Expose the port the app runs on
EXPOSE 3002

# Define the entrypoint script
CMD ["bash", "./entrypoint.sh"]
