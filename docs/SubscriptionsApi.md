# LeanixWebhooksApi::SubscriptionsApi

All URIs are relative to */services/webhooks/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_subscription**](SubscriptionsApi.md#create_subscription) | **POST** /subscriptions | createSubscription |
| [**delete_subscription**](SubscriptionsApi.md#delete_subscription) | **DELETE** /subscriptions/{id} | deleteSubscription |
| [**get_subscription**](SubscriptionsApi.md#get_subscription) | **GET** /subscriptions/{id} | getSubscription |
| [**get_subscription_deliveries**](SubscriptionsApi.md#get_subscription_deliveries) | **GET** /subscriptions/{id}/deliveries | getSubscriptionDeliveries |
| [**get_subscription_events**](SubscriptionsApi.md#get_subscription_events) | **GET** /subscriptions/{id}/events | getSubscriptionEvents |
| [**get_subscriptions**](SubscriptionsApi.md#get_subscriptions) | **GET** /subscriptions | getSubscriptions |
| [**update_subscription**](SubscriptionsApi.md#update_subscription) | **PUT** /subscriptions/{id} | updateSubscription |
| [**update_subscription_cursor**](SubscriptionsApi.md#update_subscription_cursor) | **PUT** /subscriptions/{id}/cursor | updateSubscriptionCursor |


## create_subscription

> <SubscriptionResponse> create_subscription(subscription)

createSubscription

Endpoint to create a subscription.

### Examples

```ruby
require 'time'
require 'leanix_webhooks_api'
# setup authorization
LeanixWebhooksApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixWebhooksApi::SubscriptionsApi.new
subscription = LeanixWebhooksApi::Subscription.new({target_url: 'target_url_example', target_method: 'target_method_example', ignore_error: false}) # Subscription | the subscription to create

begin
  # createSubscription
  result = api_instance.create_subscription(subscription)
  p result
rescue LeanixWebhooksApi::ApiError => e
  puts "Error when calling SubscriptionsApi->create_subscription: #{e}"
end
```

#### Using the create_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionResponse>, Integer, Hash)> create_subscription_with_http_info(subscription)

```ruby
begin
  # createSubscription
  data, status_code, headers = api_instance.create_subscription_with_http_info(subscription)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionResponse>
rescue LeanixWebhooksApi::ApiError => e
  puts "Error when calling SubscriptionsApi->create_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription** | [**Subscription**](Subscription.md) | the subscription to create |  |

### Return type

[**SubscriptionResponse**](SubscriptionResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_subscription

> <SubscriptionResponse> delete_subscription(id)

deleteSubscription

Endpoint to delete a subscription.

### Examples

```ruby
require 'time'
require 'leanix_webhooks_api'
# setup authorization
LeanixWebhooksApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixWebhooksApi::SubscriptionsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # deleteSubscription
  result = api_instance.delete_subscription(id)
  p result
rescue LeanixWebhooksApi::ApiError => e
  puts "Error when calling SubscriptionsApi->delete_subscription: #{e}"
end
```

#### Using the delete_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionResponse>, Integer, Hash)> delete_subscription_with_http_info(id)

```ruby
begin
  # deleteSubscription
  data, status_code, headers = api_instance.delete_subscription_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionResponse>
rescue LeanixWebhooksApi::ApiError => e
  puts "Error when calling SubscriptionsApi->delete_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |

### Return type

[**SubscriptionResponse**](SubscriptionResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_subscription

> <SubscriptionResponse> get_subscription(id)

getSubscription

returns a subscription with a given id

### Examples

```ruby
require 'time'
require 'leanix_webhooks_api'
# setup authorization
LeanixWebhooksApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixWebhooksApi::SubscriptionsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | the id of the subscription

begin
  # getSubscription
  result = api_instance.get_subscription(id)
  p result
rescue LeanixWebhooksApi::ApiError => e
  puts "Error when calling SubscriptionsApi->get_subscription: #{e}"
end
```

#### Using the get_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionResponse>, Integer, Hash)> get_subscription_with_http_info(id)

```ruby
begin
  # getSubscription
  data, status_code, headers = api_instance.get_subscription_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionResponse>
rescue LeanixWebhooksApi::ApiError => e
  puts "Error when calling SubscriptionsApi->get_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | the id of the subscription |  |

### Return type

[**SubscriptionResponse**](SubscriptionResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_subscription_deliveries

> <DeliveryListResponse> get_subscription_deliveries(id, opts)

getSubscriptionDeliveries

Endpoint to list the deliveries

### Examples

```ruby
require 'time'
require 'leanix_webhooks_api'
# setup authorization
LeanixWebhooksApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixWebhooksApi::SubscriptionsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
opts = {
  page: 56, # Integer | The page number to access (1 indexed, defaults to 1)
  size: 56, # Integer | The page size requested (defaults to 30, max 100)
  sort: 'sort_example' # String | Comma-separated list of sorting (default createdAt-DESC)
}

begin
  # getSubscriptionDeliveries
  result = api_instance.get_subscription_deliveries(id, opts)
  p result
rescue LeanixWebhooksApi::ApiError => e
  puts "Error when calling SubscriptionsApi->get_subscription_deliveries: #{e}"
end
```

#### Using the get_subscription_deliveries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeliveryListResponse>, Integer, Hash)> get_subscription_deliveries_with_http_info(id, opts)

```ruby
begin
  # getSubscriptionDeliveries
  data, status_code, headers = api_instance.get_subscription_deliveries_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeliveryListResponse>
rescue LeanixWebhooksApi::ApiError => e
  puts "Error when calling SubscriptionsApi->get_subscription_deliveries_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **page** | **Integer** | The page number to access (1 indexed, defaults to 1) | [optional][default to 1] |
| **size** | **Integer** | The page size requested (defaults to 30, max 100) | [optional][default to 30] |
| **sort** | **String** | Comma-separated list of sorting (default createdAt-DESC) | [optional][default to &#39;createdAt-desc&#39;] |

### Return type

[**DeliveryListResponse**](DeliveryListResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_subscription_events

> <PullResultResponse> get_subscription_events(id, opts)

getSubscriptionEvents

Gets the next batch of events for a PULL subscription, waiting for some time if no events happen.

### Examples

```ruby
require 'time'
require 'leanix_webhooks_api'
# setup authorization
LeanixWebhooksApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixWebhooksApi::SubscriptionsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Id of the subscription to pull events from. Subscription must be of type PULL.
opts = {
  auto_commit: true, # Boolean | Should events be marked as retrieved automatically (waives at-least-once delivery guarantee).
  timeout: 56 # Integer | The timeout waiting for an event to happen, in seconds
}

begin
  # getSubscriptionEvents
  result = api_instance.get_subscription_events(id, opts)
  p result
rescue LeanixWebhooksApi::ApiError => e
  puts "Error when calling SubscriptionsApi->get_subscription_events: #{e}"
end
```

#### Using the get_subscription_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PullResultResponse>, Integer, Hash)> get_subscription_events_with_http_info(id, opts)

```ruby
begin
  # getSubscriptionEvents
  data, status_code, headers = api_instance.get_subscription_events_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PullResultResponse>
rescue LeanixWebhooksApi::ApiError => e
  puts "Error when calling SubscriptionsApi->get_subscription_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Id of the subscription to pull events from. Subscription must be of type PULL. |  |
| **auto_commit** | **Boolean** | Should events be marked as retrieved automatically (waives at-least-once delivery guarantee). | [optional][default to false] |
| **timeout** | **Integer** | The timeout waiting for an event to happen, in seconds | [optional][default to 10] |

### Return type

[**PullResultResponse**](PullResultResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_subscriptions

> <SubscriptionListResponse> get_subscriptions(opts)

getSubscriptions

Endpoint to list the subscriptions.

### Examples

```ruby
require 'time'
require 'leanix_webhooks_api'
# setup authorization
LeanixWebhooksApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixWebhooksApi::SubscriptionsApi.new
opts = {
  workspace_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | an optional workspace id
  identifier: 'identifier_example' # String | an optional subscription identifier
}

begin
  # getSubscriptions
  result = api_instance.get_subscriptions(opts)
  p result
rescue LeanixWebhooksApi::ApiError => e
  puts "Error when calling SubscriptionsApi->get_subscriptions: #{e}"
end
```

#### Using the get_subscriptions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionListResponse>, Integer, Hash)> get_subscriptions_with_http_info(opts)

```ruby
begin
  # getSubscriptions
  data, status_code, headers = api_instance.get_subscriptions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionListResponse>
rescue LeanixWebhooksApi::ApiError => e
  puts "Error when calling SubscriptionsApi->get_subscriptions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workspace_id** | **String** | an optional workspace id | [optional] |
| **identifier** | **String** | an optional subscription identifier | [optional] |

### Return type

[**SubscriptionListResponse**](SubscriptionListResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_subscription

> <SubscriptionResponse> update_subscription(id, subscription)

updateSubscription

Endpoint to update a subscription.

### Examples

```ruby
require 'time'
require 'leanix_webhooks_api'
# setup authorization
LeanixWebhooksApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixWebhooksApi::SubscriptionsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
subscription = LeanixWebhooksApi::Subscription.new({target_url: 'target_url_example', target_method: 'target_method_example', ignore_error: false}) # Subscription | the updated subscription

begin
  # updateSubscription
  result = api_instance.update_subscription(id, subscription)
  p result
rescue LeanixWebhooksApi::ApiError => e
  puts "Error when calling SubscriptionsApi->update_subscription: #{e}"
end
```

#### Using the update_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionResponse>, Integer, Hash)> update_subscription_with_http_info(id, subscription)

```ruby
begin
  # updateSubscription
  data, status_code, headers = api_instance.update_subscription_with_http_info(id, subscription)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionResponse>
rescue LeanixWebhooksApi::ApiError => e
  puts "Error when calling SubscriptionsApi->update_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **subscription** | [**Subscription**](Subscription.md) | the updated subscription |  |

### Return type

[**SubscriptionResponse**](SubscriptionResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_subscription_cursor

> <BasicResponse> update_subscription_cursor(id, cursor)

updateSubscriptionCursor

Marks events up to the given offset as consumed for the given subscription.

### Examples

```ruby
require 'time'
require 'leanix_webhooks_api'
# setup authorization
LeanixWebhooksApi.configure do |config|
  # Configure OAuth2 access token for authorization: token
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = LeanixWebhooksApi::SubscriptionsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Id of the subscription to pull events from. Subscription must be of type PULL.
cursor = LeanixWebhooksApi::Cursor.new({offset: 3.56}) # Cursor | the cursor where to start the next getSubscriptionEvents pull

begin
  # updateSubscriptionCursor
  result = api_instance.update_subscription_cursor(id, cursor)
  p result
rescue LeanixWebhooksApi::ApiError => e
  puts "Error when calling SubscriptionsApi->update_subscription_cursor: #{e}"
end
```

#### Using the update_subscription_cursor_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BasicResponse>, Integer, Hash)> update_subscription_cursor_with_http_info(id, cursor)

```ruby
begin
  # updateSubscriptionCursor
  data, status_code, headers = api_instance.update_subscription_cursor_with_http_info(id, cursor)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BasicResponse>
rescue LeanixWebhooksApi::ApiError => e
  puts "Error when calling SubscriptionsApi->update_subscription_cursor_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Id of the subscription to pull events from. Subscription must be of type PULL. |  |
| **cursor** | [**Cursor**](Cursor.md) | the cursor where to start the next getSubscriptionEvents pull |  |

### Return type

[**BasicResponse**](BasicResponse.md)

### Authorization

[token](../README.md#token)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

