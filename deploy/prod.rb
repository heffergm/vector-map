#!/usr/bin/env ruby

ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)
load Gem.bin_path('bundler', 'bundle')

ENV['AWS_ACCESS_KEY_ID']     = ENV['PROD_AWS_ACCESS_KEY_ID']
ENV['AWS_SECRET_ACCESS_KEY'] = ENV['PROD_AWS_SECRET_ACCESS_KEY']

require 'aws-sdk'

client = AWS::OpsWorks::Client.new

client.create_deployment(
  stack_id: 'fd894049-fa71-4109-8297-9b332ff640cf',
  app_id: '8a27fa71-e696-43cf-ac4b-cbc8d5089941',
  command: {
    name: 'deploy'
  },
  comment: 'Deploying from circleci'
)
