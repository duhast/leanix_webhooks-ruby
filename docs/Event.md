# LeanixWebhooksApi::Event

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **created_at** | **Time** | The date at which the event was originally created. | [optional] |
| **type** | **String** |  | [optional] |
| **source_name** | **String** | The name of the source system, e.g. EAM or MTM. | [optional] |
| **source_id** | **String** | The id in the source system. | [optional] |
| **source_url** | **String** | The url of the source system, e.g. https://app.leanix.net. | [optional] |
| **workspace_id** | **String** | An optional UUID if the event is related to a workspace. | [optional] |
| **user_id** | **String** | An optional UUID if the event is related to a user. | [optional] |
| **tags** | **Array&lt;String&gt;** | a list of tags describing the nature of this event, used to find subscriptions for this event | [optional] |
| **payload** | **Object** | Contains the event the publisher wants to send wrapped inside this webhooks event here. |  |
| **sequence_info** | **Integer** |  | [optional] |

## Example

```ruby
require 'leanix_webhooks_api'

instance = LeanixWebhooksApi::Event.new(
  id: null,
  created_at: null,
  type: null,
  source_name: null,
  source_id: null,
  source_url: null,
  workspace_id: null,
  user_id: null,
  tags: null,
  payload: null,
  sequence_info: null
)
```

