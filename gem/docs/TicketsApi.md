# KoronaEntryClient::TicketsApi

All URIs are relative to *https://YourLocalInstance.com/korona.entry_server/services/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**check_ticket**](TicketsApi.md#check_ticket) | **GET** /{client}/checkTicket | Checks a ticket. The entry can optionally also be committed.
[**create_ticket**](TicketsApi.md#create_ticket) | **POST** /{client}/tickets | Creates a new ticket.
[**delete_image**](TicketsApi.md#delete_image) | **DELETE** /{client}/tickets/{ticketId}/image | Deletes the owners image of the ticket.
[**delete_ticket**](TicketsApi.md#delete_ticket) | **DELETE** /{client}/tickets/{ticketId} | Deletes the single ticket.
[**get_image**](TicketsApi.md#get_image) | **GET** /{client}/tickets/{ticketId}/image | Returns the owners image of the ticket
[**get_logs**](TicketsApi.md#get_logs) | **GET** /{client}/ticketEntryLogs | Returns the log for a optional single ticket and/or organizational unit
[**get_ticket**](TicketsApi.md#get_ticket) | **GET** /{client}/tickets/{ticketId} | Returns the single ticket.
[**get_ticket_entry**](TicketsApi.md#get_ticket_entry) | **GET** /{client}/tickets/{ticketId}/ticketEntries/{ticketEntryId} | Returns a single ticket entry.
[**get_tickets**](TicketsApi.md#get_tickets) | **GET** /{client}/tickets | Lists all tickets.
[**update_image**](TicketsApi.md#update_image) | **POST** /{client}/tickets/{ticketId}/image | Updates the owners image of the ticket
[**update_ticket**](TicketsApi.md#update_ticket) | **PATCH** /{client}/tickets/{ticketId} | Updates the single ticket.



## check_ticket

> EntryResponse check_ticket(client, ticket_number, opts)

Checks a ticket. The entry can optionally also be committed.

### Example

```ruby
# load the gem
require 'korona-entry-client'
# setup authorization
KoronaEntryClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaEntryClient::TicketsApi.new
client = 'client_example' # String | Identification of executing client.
ticket_number = 'ticket_number_example' # String | Ticket number to be checked.
opts = {
  commit_entry: true, # Boolean | True if entry should be committed.
  commit_type: 'commit_type_example', # String | 
  organizational_unit_number: 'organizational_unit_number_example', # String | Number of organizational unit.
  time: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | The time to be checked. *Now* if not specified further.
  number_of_uses: 56 # Integer | Number of uses. *1* if not specified further.
}

begin
  #Checks a ticket. The entry can optionally also be committed.
  result = api_instance.check_ticket(client, ticket_number, opts)
  p result
rescue KoronaEntryClient::ApiError => e
  puts "Exception when calling TicketsApi->check_ticket: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client** | **String**| Identification of executing client. | 
 **ticket_number** | **String**| Ticket number to be checked. | 
 **commit_entry** | **Boolean**| True if entry should be committed. | [optional] 
 **commit_type** | **String**|  | [optional] 
 **organizational_unit_number** | **String**| Number of organizational unit. | [optional] 
 **time** | **DateTime**| The time to be checked. *Now* if not specified further. | [optional] 
 **number_of_uses** | **Integer**| Number of uses. *1* if not specified further. | [optional] 

### Return type

[**EntryResponse**](EntryResponse.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_ticket

> ModelReference create_ticket(client, body)

Creates a new ticket.

### Example

```ruby
# load the gem
require 'korona-entry-client'
# setup authorization
KoronaEntryClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaEntryClient::TicketsApi.new
client = 'client_example' # String | Identification of executing client.
body = KoronaEntryClient::Ticket.new # Ticket | Properties to update of the ticket.

begin
  #Creates a new ticket.
  result = api_instance.create_ticket(client, body)
  p result
rescue KoronaEntryClient::ApiError => e
  puts "Exception when calling TicketsApi->create_ticket: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client** | **String**| Identification of executing client. | 
 **body** | [**Ticket**](Ticket.md)| Properties to update of the ticket. | 

### Return type

[**ModelReference**](ModelReference.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_image

> delete_image(client, ticket_id)

Deletes the owners image of the ticket.

### Example

```ruby
# load the gem
require 'korona-entry-client'
# setup authorization
KoronaEntryClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaEntryClient::TicketsApi.new
client = 'client_example' # String | Identification of executing client.
ticket_id = 56 # Integer | ID to identify the ticket.

begin
  #Deletes the owners image of the ticket.
  api_instance.delete_image(client, ticket_id)
rescue KoronaEntryClient::ApiError => e
  puts "Exception when calling TicketsApi->delete_image: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client** | **String**| Identification of executing client. | 
 **ticket_id** | **Integer**| ID to identify the ticket. | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_ticket

> delete_ticket(client, ticket_id)

Deletes the single ticket.

### Example

```ruby
# load the gem
require 'korona-entry-client'
# setup authorization
KoronaEntryClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaEntryClient::TicketsApi.new
client = 'client_example' # String | Identification of executing client.
ticket_id = 56 # Integer | ID to identify the ticket.

begin
  #Deletes the single ticket.
  api_instance.delete_ticket(client, ticket_id)
rescue KoronaEntryClient::ApiError => e
  puts "Exception when calling TicketsApi->delete_ticket: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client** | **String**| Identification of executing client. | 
 **ticket_id** | **Integer**| ID to identify the ticket. | 

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_image

> TicketImage get_image(client, ticket_id)

Returns the owners image of the ticket

### Example

```ruby
# load the gem
require 'korona-entry-client'
# setup authorization
KoronaEntryClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaEntryClient::TicketsApi.new
client = 'client_example' # String | Identification of executing client.
ticket_id = 56 # Integer | ID to identify the ticket.

begin
  #Returns the owners image of the ticket
  result = api_instance.get_image(client, ticket_id)
  p result
rescue KoronaEntryClient::ApiError => e
  puts "Exception when calling TicketsApi->get_image: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client** | **String**| Identification of executing client. | 
 **ticket_id** | **Integer**| ID to identify the ticket. | 

### Return type

[**TicketImage**](TicketImage.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_logs

> TicketEntryLogList get_logs(client, time_from, time_to, log_types, opts)

Returns the log for a optional single ticket and/or organizational unit

### Example

```ruby
# load the gem
require 'korona-entry-client'
# setup authorization
KoronaEntryClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaEntryClient::TicketsApi.new
client = 'client_example' # String | Identification of executing client.
time_from = DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Log time from.
time_to = DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Log time to.
log_types = ['log_types_example'] # Array<String> | Restrict the logs to specific log events.
opts = {
  ticket_number: 'ticket_number_example', # String | Optional filter to restrict the logs to actions to the specified ticket.
  organizational_unit_number: 'organizational_unit_number_example' # String | Optional filter to restrict the logs to actions within the specified organizational unit.
}

begin
  #Returns the log for a optional single ticket and/or organizational unit
  result = api_instance.get_logs(client, time_from, time_to, log_types, opts)
  p result
rescue KoronaEntryClient::ApiError => e
  puts "Exception when calling TicketsApi->get_logs: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client** | **String**| Identification of executing client. | 
 **time_from** | **DateTime**| Log time from. | 
 **time_to** | **DateTime**| Log time to. | 
 **log_types** | [**Array&lt;String&gt;**](String.md)| Restrict the logs to specific log events. | 
 **ticket_number** | **String**| Optional filter to restrict the logs to actions to the specified ticket. | [optional] 
 **organizational_unit_number** | **String**| Optional filter to restrict the logs to actions within the specified organizational unit. | [optional] 

### Return type

[**TicketEntryLogList**](TicketEntryLogList.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ticket

> Ticket get_ticket(client, ticket_id)

Returns the single ticket.

### Example

```ruby
# load the gem
require 'korona-entry-client'
# setup authorization
KoronaEntryClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaEntryClient::TicketsApi.new
client = 'client_example' # String | Identification of executing client.
ticket_id = 56 # Integer | ID to identify the ticket.

begin
  #Returns the single ticket.
  result = api_instance.get_ticket(client, ticket_id)
  p result
rescue KoronaEntryClient::ApiError => e
  puts "Exception when calling TicketsApi->get_ticket: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client** | **String**| Identification of executing client. | 
 **ticket_id** | **Integer**| ID to identify the ticket. | 

### Return type

[**Ticket**](Ticket.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_ticket_entry

> TicketEntry get_ticket_entry(client, ticket_id, ticket_entry_id)

Returns a single ticket entry.

### Example

```ruby
# load the gem
require 'korona-entry-client'
# setup authorization
KoronaEntryClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaEntryClient::TicketsApi.new
client = 'client_example' # String | Identification of executing client.
ticket_id = 56 # Integer | ID to identify the ticket.
ticket_entry_id = 56 # Integer | ID to identify the ticket entry of the ticket.

begin
  #Returns a single ticket entry.
  result = api_instance.get_ticket_entry(client, ticket_id, ticket_entry_id)
  p result
rescue KoronaEntryClient::ApiError => e
  puts "Exception when calling TicketsApi->get_ticket_entry: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client** | **String**| Identification of executing client. | 
 **ticket_id** | **Integer**| ID to identify the ticket. | 
 **ticket_entry_id** | **Integer**| ID to identify the ticket entry of the ticket. | 

### Return type

[**TicketEntry**](TicketEntry.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_tickets

> TicketList get_tickets(client, offset, page_size, opts)

Lists all tickets.

### Example

```ruby
# load the gem
require 'korona-entry-client'
# setup authorization
KoronaEntryClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaEntryClient::TicketsApi.new
client = 'client_example' # String | Identification of executing client.
offset = 56 # Integer | Position in the dataset to start to retrieve.
page_size = 56 # Integer | Amount of objects to return per page.
opts = {
  ticket_number: 'ticket_number_example', # String | Restrict the list for a specific ticket number
  create_date_from: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Restrict the list for begin of creation date.
  create_date_to: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Restrict the list for end of creation date.
  deactivation_date_from: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Restrict the list for start of deactivation date.
  deactivation_date_to: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Restrict the list for end of deactivation date.
  locked: true, # Boolean | Restrict the list for locked tickets.
  locked_to_date_from: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Restrict the list for for locked tickets.
  locked_to_date_to: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Restrict the list for for locked tickets.
  personalization_customer_number: 'personalization_customer_number_example', # String | Restrict the list for tickets owned by customers with specific customer number.
  personalization_lastname: 'personalization_lastname_example', # String | Restrict the list for tickets owned by customers with specific last name.
  personalization_firstname: 'personalization_firstname_example' # String | Restrict the list for tickets owned by customers with specific first name.
}

begin
  #Lists all tickets.
  result = api_instance.get_tickets(client, offset, page_size, opts)
  p result
rescue KoronaEntryClient::ApiError => e
  puts "Exception when calling TicketsApi->get_tickets: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client** | **String**| Identification of executing client. | 
 **offset** | **Integer**| Position in the dataset to start to retrieve. | 
 **page_size** | **Integer**| Amount of objects to return per page. | 
 **ticket_number** | **String**| Restrict the list for a specific ticket number | [optional] 
 **create_date_from** | **DateTime**| Restrict the list for begin of creation date. | [optional] 
 **create_date_to** | **DateTime**| Restrict the list for end of creation date. | [optional] 
 **deactivation_date_from** | **DateTime**| Restrict the list for start of deactivation date. | [optional] 
 **deactivation_date_to** | **DateTime**| Restrict the list for end of deactivation date. | [optional] 
 **locked** | **Boolean**| Restrict the list for locked tickets. | [optional] 
 **locked_to_date_from** | **DateTime**| Restrict the list for for locked tickets. | [optional] 
 **locked_to_date_to** | **DateTime**| Restrict the list for for locked tickets. | [optional] 
 **personalization_customer_number** | **String**| Restrict the list for tickets owned by customers with specific customer number. | [optional] 
 **personalization_lastname** | **String**| Restrict the list for tickets owned by customers with specific last name. | [optional] 
 **personalization_firstname** | **String**| Restrict the list for tickets owned by customers with specific first name. | [optional] 

### Return type

[**TicketList**](TicketList.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_image

> ModelReference update_image(client, ticket_id, body)

Updates the owners image of the ticket

### Example

```ruby
# load the gem
require 'korona-entry-client'
# setup authorization
KoronaEntryClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaEntryClient::TicketsApi.new
client = 'client_example' # String | Identification of executing client.
ticket_id = 56 # Integer | ID to identify the ticket.
body = KoronaEntryClient::TicketImage.new # TicketImage | Properties to update of the image.

begin
  #Updates the owners image of the ticket
  result = api_instance.update_image(client, ticket_id, body)
  p result
rescue KoronaEntryClient::ApiError => e
  puts "Exception when calling TicketsApi->update_image: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client** | **String**| Identification of executing client. | 
 **ticket_id** | **Integer**| ID to identify the ticket. | 
 **body** | [**TicketImage**](TicketImage.md)| Properties to update of the image. | 

### Return type

[**ModelReference**](ModelReference.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_ticket

> ModelReference update_ticket(client, ticket_id, body)

Updates the single ticket.

### Example

```ruby
# load the gem
require 'korona-entry-client'
# setup authorization
KoronaEntryClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaEntryClient::TicketsApi.new
client = 'client_example' # String | Identification of executing client.
ticket_id = 56 # Integer | ID to identify the ticket.
body = KoronaEntryClient::Ticket.new # Ticket | Properties to update of the ticket.

begin
  #Updates the single ticket.
  result = api_instance.update_ticket(client, ticket_id, body)
  p result
rescue KoronaEntryClient::ApiError => e
  puts "Exception when calling TicketsApi->update_ticket: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client** | **String**| Identification of executing client. | 
 **ticket_id** | **Integer**| ID to identify the ticket. | 
 **body** | [**Ticket**](Ticket.md)| Properties to update of the ticket. | 

### Return type

[**ModelReference**](ModelReference.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

