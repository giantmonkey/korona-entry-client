# KoronaEntryClient::OrganizationalUnitsApi

All URIs are relative to *https://YourLocalInstance.com/korona.entry/services/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_organizational_unit**](OrganizationalUnitsApi.md#create_organizational_unit) | **POST** /{client}/organizationalUnits | Creates a new organizational unit.
[**delete_organizational_unit**](OrganizationalUnitsApi.md#delete_organizational_unit) | **DELETE** /{client}/organizationalUnits/{organizationalUnitId} | Deletes the single organizational unit.
[**get_organizational_unit**](OrganizationalUnitsApi.md#get_organizational_unit) | **GET** /{client}/organizationalUnits/{organizationalUnitId} | Returns the single organizational unit.
[**get_organizational_units**](OrganizationalUnitsApi.md#get_organizational_units) | **GET** /{client}/organizationalUnits | Returns all organizational unit
[**update_organizational_unit**](OrganizationalUnitsApi.md#update_organizational_unit) | **PATCH** /{client}/organizationalUnits/{organizationalUnitId} | Updates the single organizational unit.



## create_organizational_unit

> ModelReference create_organizational_unit(client, body)

Creates a new organizational unit.

### Example

```ruby
# load the gem
require 'korona-entry-client'

api_instance = KoronaEntryClient::OrganizationalUnitsApi.new
client = 'client_example' # String | Identification of executing client.
body = KoronaEntryClient::OrganizationalUnit.new # OrganizationalUnit | Properties to update of the organizational unit.

begin
  #Creates a new organizational unit.
  result = api_instance.create_organizational_unit(client, body)
  p result
rescue KoronaEntryClient::ApiError => e
  puts "Exception when calling OrganizationalUnitsApi->create_organizational_unit: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client** | **String**| Identification of executing client. | 
 **body** | [**OrganizationalUnit**](OrganizationalUnit.md)| Properties to update of the organizational unit. | 

### Return type

[**ModelReference**](ModelReference.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_organizational_unit

> delete_organizational_unit(client, organizational_unit_id)

Deletes the single organizational unit.

### Example

```ruby
# load the gem
require 'korona-entry-client'

api_instance = KoronaEntryClient::OrganizationalUnitsApi.new
client = 'client_example' # String | Identification of executing client.
organizational_unit_id = 56 # Integer | ID to identify the organizational unit.

begin
  #Deletes the single organizational unit.
  api_instance.delete_organizational_unit(client, organizational_unit_id)
rescue KoronaEntryClient::ApiError => e
  puts "Exception when calling OrganizationalUnitsApi->delete_organizational_unit: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client** | **String**| Identification of executing client. | 
 **organizational_unit_id** | **Integer**| ID to identify the organizational unit. | 

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_organizational_unit

> OrganizationalUnit get_organizational_unit(client, organizational_unit_id)

Returns the single organizational unit.

### Example

```ruby
# load the gem
require 'korona-entry-client'

api_instance = KoronaEntryClient::OrganizationalUnitsApi.new
client = 'client_example' # String | Identification of executing client.
organizational_unit_id = 56 # Integer | ID to identify the organizational unit.

begin
  #Returns the single organizational unit.
  result = api_instance.get_organizational_unit(client, organizational_unit_id)
  p result
rescue KoronaEntryClient::ApiError => e
  puts "Exception when calling OrganizationalUnitsApi->get_organizational_unit: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client** | **String**| Identification of executing client. | 
 **organizational_unit_id** | **Integer**| ID to identify the organizational unit. | 

### Return type

[**OrganizationalUnit**](OrganizationalUnit.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_organizational_units

> OrganizationalUnitList get_organizational_units(client)

Returns all organizational unit

### Example

```ruby
# load the gem
require 'korona-entry-client'

api_instance = KoronaEntryClient::OrganizationalUnitsApi.new
client = 'client_example' # String | Identification of executing client.

begin
  #Returns all organizational unit
  result = api_instance.get_organizational_units(client)
  p result
rescue KoronaEntryClient::ApiError => e
  puts "Exception when calling OrganizationalUnitsApi->get_organizational_units: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client** | **String**| Identification of executing client. | 

### Return type

[**OrganizationalUnitList**](OrganizationalUnitList.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_organizational_unit

> ModelReference update_organizational_unit(client, organizational_unit_id, body)

Updates the single organizational unit.

### Example

```ruby
# load the gem
require 'korona-entry-client'

api_instance = KoronaEntryClient::OrganizationalUnitsApi.new
client = 'client_example' # String | Identification of executing client.
organizational_unit_id = 56 # Integer | ID to identify the organizational unit.
body = KoronaEntryClient::OrganizationalUnit.new # OrganizationalUnit | Properties to update of the organizational unit.

begin
  #Updates the single organizational unit.
  result = api_instance.update_organizational_unit(client, organizational_unit_id, body)
  p result
rescue KoronaEntryClient::ApiError => e
  puts "Exception when calling OrganizationalUnitsApi->update_organizational_unit: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client** | **String**| Identification of executing client. | 
 **organizational_unit_id** | **Integer**| ID to identify the organizational unit. | 
 **body** | [**OrganizationalUnit**](OrganizationalUnit.md)| Properties to update of the organizational unit. | 

### Return type

[**ModelReference**](ModelReference.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

