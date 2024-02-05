# LeanixWebhooksApi::Subscription

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **delivery_type** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |
| **identifier** | **String** |  | [optional] |
| **tag_sets** | **Array&lt;Array&lt;String&gt;&gt;** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **workspace_id** | **String** |  | [optional] |
| **user_id** | **String** |  | [optional] |
| **target_url** | **String** | Used and required when &#39;deliveryType&#39; is &#39;PUSH&#39;. |  |
| **target_method** | **String** | Used when &#39;deliveryType&#39; is &#39;PUSH&#39;. |  |
| **authorization_header** | **String** | Used when &#39;deliveryType&#39; is &#39;PUSH&#39;. | [optional] |
| **callback** | **String** | Used when &#39;deliveryType&#39; is &#39;PUSH&#39;. | [optional] |
| **last_delivery_status** | **Integer** | Used when &#39;deliveryType&#39; is &#39;PUSH&#39;. | [optional] |
| **ignore_error** | **Boolean** | Don&#39;t re-send events that caused an error on PUSH. Shirks the at-least-once policy! No effect on PULL. |  |
| **max_batch_size** | **Integer** | Used when &#39;deliveryType&#39; is &#39;PULL&#39;. The desired maximum size (in kiB) of the returned batch of events. Default is 512. This is an approximate number: Actual responses may be smaller, or bigger when there is one single event exceeding maxBatchSize. | [optional] |
| **workspace_constraint** | **String** | Specifies how the workspaceId is used on events:  WORKSPACE -&gt; get events with specified workspaceId (workspaceId must not be null), NO_WORKSPACE -&gt; get events that have no workspaceId (workspaceId must be null), ANY -&gt; get all events regardless if a workspaceId is assigned or not on the event | [optional] |
| **active** | **Boolean** |  | [optional] |
| **error_count** | **Integer** |  | [optional] |
| **first_time_delivery_failed** | **Time** |  | [optional] |
| **payload_mode** | **String** | Specifies the behavior of the payload property of a delivery for this subscription:  DEFAULT -&gt; get only the payload property of the event (default behavior), WRAPPED_EVENT -&gt; get the whole serialized event as the payload, NO_PAYLOAD -&gt; get always an empty {} payload | [optional] |

## Example

```ruby
require 'leanix_webhooks_api'

instance = LeanixWebhooksApi::Subscription.new(
  delivery_type: null,
  id: null,
  identifier: null,
  tag_sets: null,
  created_at: null,
  workspace_id: null,
  user_id: null,
  target_url: null,
  target_method: null,
  authorization_header: null,
  callback: null,
  last_delivery_status: null,
  ignore_error: null,
  max_batch_size: null,
  workspace_constraint: null,
  active: null,
  error_count: null,
  first_time_delivery_failed: null,
  payload_mode: null
)
```

