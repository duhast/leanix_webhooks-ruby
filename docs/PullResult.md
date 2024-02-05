# LeanixWebhooksApi::PullResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **events** | [**Array&lt;PullEvent&gt;**](PullEvent.md) |  | [optional] |
| **next_cursor** | [**Cursor**](Cursor.md) |  | [optional] |

## Example

```ruby
require 'leanix_webhooks_api'

instance = LeanixWebhooksApi::PullResult.new(
  events: null,
  next_cursor: null
)
```

