# KoronaEntryClient::ExternalTicketConfiguration

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Objects ID. | [optional] 
**number** | **String** | Number of external ticket configuration. | [optional] 
**name** | **String** | Name of external ticket configuration. | [optional] 
**pattern** | **String** | Matching pattern for unkown external tickets. | [optional] 
**valid_from_period** | **String** | Adjusts the validFrom value of TicketEntry while ticket creation dynamically to the ticket creation time plus the period. | [optional] 
**valid_to_period** | **String** | Adjusts the validTo value of TicketEntry while ticket creation dynamically to the ticket creation time plus the period. | [optional] 
**ticket_entries** | [**Array&lt;TicketEntry&gt;**](TicketEntry.md) | Validities for this configuration of external tickets. | [optional] 

## Code Sample

```ruby
require 'KoronaEntryClient'

instance = KoronaEntryClient::ExternalTicketConfiguration.new(id: null,
                                 number: null,
                                 name: null,
                                 pattern: null,
                                 valid_from_period: null,
                                 valid_to_period: null,
                                 ticket_entries: null)
```


