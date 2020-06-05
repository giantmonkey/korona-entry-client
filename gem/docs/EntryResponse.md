# KoronaEntryClient::EntryResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ticket** | [**ModelReference**](ModelReference.md) |  | [optional] 
**ticket_entry** | [**ModelReference**](ModelReference.md) |  | [optional] 
**valid_to_max** | **DateTime** | maximum validity end date calculated. | [optional] 

## Code Sample

```ruby
require 'KoronaEntryClient'

instance = KoronaEntryClient::EntryResponse.new(ticket: null,
                                 ticket_entry: null,
                                 valid_to_max: null)
```


