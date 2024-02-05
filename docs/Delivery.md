# LeanixWebhooksApi::Delivery

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **created_at** | **Time** | The date at which the delivery was originally created. | [optional] |
| **request_headers** | **String** |  | [optional] |
| **payload** | **String** |  | [optional] |
| **target_url** | **String** |  | [optional] |
| **target_method** | **String** |  | [optional] |
| **basic_auth** | **String** |  | [optional] |
| **success** | **Boolean** |  | [optional] |
| **http_status** | **Integer** |  | [optional] |
| **response_body** | **String** |  | [optional] |
| **response_headers** | **String** |  | [optional] |
| **active** | **Boolean** |  | [optional] |
| **duration** | **Integer** | Duration in milliseconds. | [optional] |
| **event_processing_time** | **Integer** | Time it took to process the event in milliseconds. | [optional] |
| **event_id** | **String** |  | [optional] |

## Example

```ruby
require 'leanix_webhooks_api'

instance = LeanixWebhooksApi::Delivery.new(
  id: null,
  created_at: 2017-08-28T08:25:33.654Z,
  request_headers: null,
  payload: null,
  target_url: null,
  target_method: null,
  basic_auth: null,
  success: null,
  http_status: null,
  response_body: null,
  response_headers: null,
  active: null,
  duration: null,
  event_processing_time: null,
  event_id: null
)
```

