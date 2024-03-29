=begin
#Webhooks

#Sends notifications on trigger events to subscribed observers

The version of the OpenAPI document: 2.0.119-SNAPSHOT

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.2.0

=end

require 'spec_helper'
require 'json'

# Unit tests for LeanixWebhooksApi::SubscriptionsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SubscriptionsApi' do
  before do
    # run before each test
    @api_instance = LeanixWebhooksApi::SubscriptionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SubscriptionsApi' do
    it 'should create an instance of SubscriptionsApi' do
      expect(@api_instance).to be_instance_of(LeanixWebhooksApi::SubscriptionsApi)
    end
  end

  # unit tests for create_subscription
  # createSubscription
  # Endpoint to create a subscription.
  # @param subscription the subscription to create
  # @param [Hash] opts the optional parameters
  # @return [SubscriptionResponse]
  describe 'create_subscription test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_subscription
  # deleteSubscription
  # Endpoint to delete a subscription.
  # @param id 
  # @param [Hash] opts the optional parameters
  # @return [SubscriptionResponse]
  describe 'delete_subscription test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_subscription
  # getSubscription
  # returns a subscription with a given id
  # @param id the id of the subscription
  # @param [Hash] opts the optional parameters
  # @return [SubscriptionResponse]
  describe 'get_subscription test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_subscription_deliveries
  # getSubscriptionDeliveries
  # Endpoint to list the deliveries
  # @param id 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page The page number to access (1 indexed, defaults to 1)
  # @option opts [Integer] :size The page size requested (defaults to 30, max 100)
  # @option opts [String] :sort Comma-separated list of sorting (default createdAt-DESC)
  # @return [DeliveryListResponse]
  describe 'get_subscription_deliveries test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_subscription_events
  # getSubscriptionEvents
  # Gets the next batch of events for a PULL subscription, waiting for some time if no events happen.
  # @param id Id of the subscription to pull events from. Subscription must be of type PULL.
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :auto_commit Should events be marked as retrieved automatically (waives at-least-once delivery guarantee).
  # @option opts [Integer] :timeout The timeout waiting for an event to happen, in seconds
  # @return [PullResultResponse]
  describe 'get_subscription_events test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_subscriptions
  # getSubscriptions
  # Endpoint to list the subscriptions.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :workspace_id an optional workspace id
  # @option opts [String] :identifier an optional subscription identifier
  # @return [SubscriptionListResponse]
  describe 'get_subscriptions test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_subscription
  # updateSubscription
  # Endpoint to update a subscription.
  # @param id 
  # @param subscription the updated subscription
  # @param [Hash] opts the optional parameters
  # @return [SubscriptionResponse]
  describe 'update_subscription test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_subscription_cursor
  # updateSubscriptionCursor
  # Marks events up to the given offset as consumed for the given subscription.
  # @param id Id of the subscription to pull events from. Subscription must be of type PULL.
  # @param cursor the cursor where to start the next getSubscriptionEvents pull
  # @param [Hash] opts the optional parameters
  # @return [BasicResponse]
  describe 'update_subscription_cursor test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
