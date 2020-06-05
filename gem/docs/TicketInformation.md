# KoronaEntryClient::TicketInformation

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**tag** | **String** | Optional information to categorize tickets by entries. | [optional] 
**count_statistically** | **Boolean** | Optional information. *True*, if an access by this TicketEntry should count statistically (f.e. customers or employees). | [optional] 
**ticket_value** | **Float** | Optional information that represents the sale value of this TicketEntry. | [optional] 
**entry_signal** | **String** | Optional information for the presentation of the ticket by this entry. | [optional] 
**product_number** | **String** | Number of the associated article. | [optional] 
**receipt_number** | **String** | Number of the receipt by which the ticket was created. | [optional] 

## Code Sample

```ruby
require 'KoronaEntryClient'

instance = KoronaEntryClient::TicketInformation.new(tag: null,
                                 count_statistically: null,
                                 ticket_value: null,
                                 entry_signal: null,
                                 product_number: null,
                                 receipt_number: null)
```


