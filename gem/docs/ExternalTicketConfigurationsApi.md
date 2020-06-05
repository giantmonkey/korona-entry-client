# KoronaEntryClient::ExternalTicketConfigurationsApi

All URIs are relative to *https://YourLocalInstance.com/korona.entry_server/services/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_external_ticket_configurations**](ExternalTicketConfigurationsApi.md#create_external_ticket_configurations) | **POST** /{client}/externalTicketConfigurations | Creates a new external ticket configuration. If an unkown ticket number will be checked and the pattern of the ticket number will be equals to a pattern of a external ticket configuration, a new ticket will be created. The TicketEntry of the external ticket configuration will be copied and adjusted to the new ticket. The newly created ticket is then checked for validity.
[**delete_external_ticket_configuration**](ExternalTicketConfigurationsApi.md#delete_external_ticket_configuration) | **DELETE** /{client}/externalTicketConfigurations/{externalTicketConfigurationId} | Deletes the single external ticket configuration.
[**get_external_ticket_configuration**](ExternalTicketConfigurationsApi.md#get_external_ticket_configuration) | **GET** /{client}/externalTicketConfigurations/{externalTicketConfigurationId} | Returns the external ticket configuration.
[**get_external_ticket_configurations**](ExternalTicketConfigurationsApi.md#get_external_ticket_configurations) | **GET** /{client}/externalTicketConfigurations | Returns all external ticket configurations
[**update_external_ticket_configuration**](ExternalTicketConfigurationsApi.md#update_external_ticket_configuration) | **PATCH** /{client}/externalTicketConfigurations/{externalTicketConfigurationId} | Updates the single external ticket configuration.



## create_external_ticket_configurations

> ModelReference create_external_ticket_configurations(client, body)

Creates a new external ticket configuration. If an unkown ticket number will be checked and the pattern of the ticket number will be equals to a pattern of a external ticket configuration, a new ticket will be created. The TicketEntry of the external ticket configuration will be copied and adjusted to the new ticket. The newly created ticket is then checked for validity.

### Example

```ruby
# load the gem
require 'korona-entry-client'

api_instance = KoronaEntryClient::ExternalTicketConfigurationsApi.new
client = 'client_example' # String | Identification of executing client.
body = KoronaEntryClient::ExternalTicketConfiguration.new # ExternalTicketConfiguration | Properties to update of the external ticket configuration.

begin
  #Creates a new external ticket configuration. If an unkown ticket number will be checked and the pattern of the ticket number will be equals to a pattern of a external ticket configuration, a new ticket will be created. The TicketEntry of the external ticket configuration will be copied and adjusted to the new ticket. The newly created ticket is then checked for validity.
  result = api_instance.create_external_ticket_configurations(client, body)
  p result
rescue KoronaEntryClient::ApiError => e
  puts "Exception when calling ExternalTicketConfigurationsApi->create_external_ticket_configurations: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client** | **String**| Identification of executing client. | 
 **body** | [**ExternalTicketConfiguration**](ExternalTicketConfiguration.md)| Properties to update of the external ticket configuration. | 

### Return type

[**ModelReference**](ModelReference.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_external_ticket_configuration

> delete_external_ticket_configuration(client, external_ticket_configuration_id)

Deletes the single external ticket configuration.

### Example

```ruby
# load the gem
require 'korona-entry-client'

api_instance = KoronaEntryClient::ExternalTicketConfigurationsApi.new
client = 'client_example' # String | Identification of executing client.
external_ticket_configuration_id = 56 # Integer | ID to identify the external ticket configuration.

begin
  #Deletes the single external ticket configuration.
  api_instance.delete_external_ticket_configuration(client, external_ticket_configuration_id)
rescue KoronaEntryClient::ApiError => e
  puts "Exception when calling ExternalTicketConfigurationsApi->delete_external_ticket_configuration: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client** | **String**| Identification of executing client. | 
 **external_ticket_configuration_id** | **Integer**| ID to identify the external ticket configuration. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_external_ticket_configuration

> ExternalTicketConfiguration get_external_ticket_configuration(client, external_ticket_configuration_id)

Returns the external ticket configuration.

### Example

```ruby
# load the gem
require 'korona-entry-client'

api_instance = KoronaEntryClient::ExternalTicketConfigurationsApi.new
client = 'client_example' # String | Identification of executing client.
external_ticket_configuration_id = 56 # Integer | ID to identify the external ticket configuration.

begin
  #Returns the external ticket configuration.
  result = api_instance.get_external_ticket_configuration(client, external_ticket_configuration_id)
  p result
rescue KoronaEntryClient::ApiError => e
  puts "Exception when calling ExternalTicketConfigurationsApi->get_external_ticket_configuration: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client** | **String**| Identification of executing client. | 
 **external_ticket_configuration_id** | **Integer**| ID to identify the external ticket configuration. | 

### Return type

[**ExternalTicketConfiguration**](ExternalTicketConfiguration.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_external_ticket_configurations

> ExternalTicketConfigurationList get_external_ticket_configurations(client)

Returns all external ticket configurations

### Example

```ruby
# load the gem
require 'korona-entry-client'

api_instance = KoronaEntryClient::ExternalTicketConfigurationsApi.new
client = 'client_example' # String | Identification of executing client.

begin
  #Returns all external ticket configurations
  result = api_instance.get_external_ticket_configurations(client)
  p result
rescue KoronaEntryClient::ApiError => e
  puts "Exception when calling ExternalTicketConfigurationsApi->get_external_ticket_configurations: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client** | **String**| Identification of executing client. | 

### Return type

[**ExternalTicketConfigurationList**](ExternalTicketConfigurationList.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_external_ticket_configuration

> ModelReference update_external_ticket_configuration(client, external_ticket_configuration_id, body)

Updates the single external ticket configuration.

### Example

```ruby
# load the gem
require 'korona-entry-client'

api_instance = KoronaEntryClient::ExternalTicketConfigurationsApi.new
client = 'client_example' # String | Identification of executing client.
external_ticket_configuration_id = 56 # Integer | ID to identify the external ticket configuration.
body = KoronaEntryClient::ExternalTicketConfiguration.new # ExternalTicketConfiguration | Properties to update of the external ticket configuration.

begin
  #Updates the single external ticket configuration.
  result = api_instance.update_external_ticket_configuration(client, external_ticket_configuration_id, body)
  p result
rescue KoronaEntryClient::ApiError => e
  puts "Exception when calling ExternalTicketConfigurationsApi->update_external_ticket_configuration: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client** | **String**| Identification of executing client. | 
 **external_ticket_configuration_id** | **Integer**| ID to identify the external ticket configuration. | 
 **body** | [**ExternalTicketConfiguration**](ExternalTicketConfiguration.md)| Properties to update of the external ticket configuration. | 

### Return type

[**ModelReference**](ModelReference.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

