# LeanixWebhooksApi::EventsApi

All URIs are relative to */services/webhooks/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_event**](EventsApi.md#create_event) | **POST** /events | createEvent |
| [**create_event_batch**](EventsApi.md#create_event_batch) | **POST** /events/batch | createEventBatch |


## create_event

> <EventResponse> create_event(event)

createEvent

Endpoint to trigger an event.

### Examples

```ruby
require 'time'
require 'leanix_webhooks_api'
# setup authorization
LeanixWebhooksApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixWebhooksApi::EventsApi.new
event = LeanixWebhooksApi::Event.new({payload: 3.56}) # Event | the event to trigger

begin
  # createEvent
  result = api_instance.create_event(event)
  p result
rescue LeanixWebhooksApi::ApiError => e
  puts "Error when calling EventsApi->create_event: #{e}"
end
```

#### Using the create_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventResponse>, Integer, Hash)> create_event_with_http_info(event)

```ruby
begin
  # createEvent
  data, status_code, headers = api_instance.create_event_with_http_info(event)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventResponse>
rescue LeanixWebhooksApi::ApiError => e
  puts "Error when calling EventsApi->create_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event** | [**Event**](Event.md) | the event to trigger |  |

### Return type

[**EventResponse**](EventResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_event_batch

> <EventListResponse> create_event_batch(batch)

createEventBatch

Endpoint to trigger multiple events.

### Examples

```ruby
require 'time'
require 'leanix_webhooks_api'
# setup authorization
LeanixWebhooksApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixWebhooksApi::EventsApi.new
batch = LeanixWebhooksApi::EventBatch.new({events: [LeanixWebhooksApi::Event.new({payload: 3.56})]}) # EventBatch | the events to trigger

begin
  # createEventBatch
  result = api_instance.create_event_batch(batch)
  p result
rescue LeanixWebhooksApi::ApiError => e
  puts "Error when calling EventsApi->create_event_batch: #{e}"
end
```

#### Using the create_event_batch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventListResponse>, Integer, Hash)> create_event_batch_with_http_info(batch)

```ruby
begin
  # createEventBatch
  data, status_code, headers = api_instance.create_event_batch_with_http_info(batch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventListResponse>
rescue LeanixWebhooksApi::ApiError => e
  puts "Error when calling EventsApi->create_event_batch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batch** | [**EventBatch**](EventBatch.md) | the events to trigger |  |

### Return type

[**EventListResponse**](EventListResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

