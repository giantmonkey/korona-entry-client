# KoronaEntryClient::TicketEntry

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Objects ID. | [optional] 
**create_date** | **DateTime** | Date of creation. | [optional] [readonly] 
**used_up** | **Boolean** | *True*, if the ticket is used up. | [optional] 
**first_use** | **DateTime** | Date of first use. | [optional] [readonly] 
**last_use** | **DateTime** | Date of last use (not exiting). | [optional] [readonly] 
**last_exit** | **DateTime** | Date of last exiting. | [optional] [readonly] 
**uses** | **Integer** | Number of entries already made. | [optional] [readonly] 
**uses_max** | **Integer** | Optional maximum number of possible entries. | [optional] 
**valid_from** | **DateTime** | When the ticket becomes valid. | [optional] 
**valid_to** | **DateTime** | Optional fixed date until which the ticket is valid. | [optional] 
**valid_from_time** | **String** | Time from which the ticket becomes valid within a day. Format: HH:ii:ss | [optional] 
**valid_to_time** | **String** | Time until which the ticket becomes valid within a day. Format: HH:ii:ss | [optional] 
**lock_after_use** | **Integer** | Specifies the number of days after which the ticket is locked from the first use. | [optional] 
**entry_gates** | **Array&lt;String&gt;** | Number of access points to which this validity applies. | [optional] 
**information** | [**TicketInformation**](TicketInformation.md) |  | [optional] 
**locked_to** | **DateTime** | Date until which the ticketEntry is locked. | [optional] 
**re_entry_lock** | **Integer** | Specifies how many seconds the ticket should be locked after a successful entry. | [optional] 
**lock_for_period_after_use** | **String** | Specifies a time period after which the ticket is locked from the first use. The standard ISO 8601 format is used - PyYmMwWdDThHmMsS. Note that weeks should not be shown if any other field is present and vice versa. | [optional] 

## Code Sample

```ruby
require 'KoronaEntryClient'

instance = KoronaEntryClient::TicketEntry.new(id: null,
                                 create_date: null,
                                 used_up: null,
                                 first_use: null,
                                 last_use: null,
                                 last_exit: null,
                                 uses: null,
                                 uses_max: null,
                                 valid_from: null,
                                 valid_to: null,
                                 valid_from_time: null,
                                 valid_to_time: null,
                                 lock_after_use: null,
                                 entry_gates: null,
                                 information: null,
                                 locked_to: null,
                                 re_entry_lock: null,
                                 lock_for_period_after_use: null)
```


