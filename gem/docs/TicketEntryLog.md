# KoronaEntryClient::TicketEntryLog

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Objects ID. | [optional] 
**comment** | **String** | Short comment for this action. | [optional] 
**ticket** | [**ModelReference**](ModelReference.md) |  | [optional] 
**ticket_entry** | [**ModelReference**](ModelReference.md) |  | [optional] 
**log_type** | **String** | Identification of action type. | [optional] 
**response** | **String** | Identification of response type. | [optional] 
**time** | **DateTime** | Time of action. | [optional] 
**organizational_unit_number** | **String** | Number of the organizational unit concerned. | [optional] 
**client** | **String** | Client concerned. | [optional] 
**number_of_uses** | **Integer** | Number of uses if its an entry action. | [optional] 
**commit_type** | **String** | Identification of commit type. | [optional] 

## Code Sample

```ruby
require 'KoronaEntryClient'

instance = KoronaEntryClient::TicketEntryLog.new(id: null,
                                 comment: null,
                                 ticket: null,
                                 ticket_entry: null,
                                 log_type: null,
                                 response: null,
                                 time: null,
                                 organizational_unit_number: null,
                                 client: null,
                                 number_of_uses: null,
                                 commit_type: null)
```


