# KoronaEntryClient::Ticket

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Objects ID. | [optional] 
**number** | **String** | Tickets number. If null, number will be generated. | [optional] 
**locked** | **Boolean** | *True*, if ticket is generally locked. | [optional] 
**locked_to** | **DateTime** | Set, if ticket is temporarily locked until the specified date. Indiependent of *locked* property. | [optional] 
**create_date** | **DateTime** | Date of creation. | [optional] [readonly] 
**ticket_entries** | [**Array&lt;TicketEntry&gt;**](TicketEntry.md) | Validities for this ticket. | [optional] 
**personalization** | [**TicketPersonalization**](TicketPersonalization.md) |  | [optional] 
**active** | **Boolean** | Indicates whether the object is active for use or not. | [optional] [readonly] 
**deactivation_date** | **DateTime** | Date of deactivation. | [optional] [readonly] 
**external_ticket** | **Boolean** | Indicates whether the ticket is created by external ticket configuration. | [optional] [readonly] 

## Code Sample

```ruby
require 'KoronaEntryClient'

instance = KoronaEntryClient::Ticket.new(id: null,
                                 number: null,
                                 locked: null,
                                 locked_to: null,
                                 create_date: null,
                                 ticket_entries: null,
                                 personalization: null,
                                 active: null,
                                 deactivation_date: null,
                                 external_ticket: null)
```


