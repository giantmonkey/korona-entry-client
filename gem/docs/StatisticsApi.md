# KoronaEntryClient::StatisticsApi

All URIs are relative to *https://YourLocalInstance.com/korona.entry/services/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**load_grouped_entries**](StatisticsApi.md#load_grouped_entries) | **GET** /{client}/statistics/groupedEntries | Prepares entries statistically and returns them as a list.



## load_grouped_entries

> Array&lt;StatisticGroupedEntry&gt; load_grouped_entries(client, time_from, time_to, ticket_type, grouped_entries_type, opts)

Prepares entries statistically and returns them as a list.

### Example

```ruby
# load the gem
require 'korona-entry-client'

api_instance = KoronaEntryClient::StatisticsApi.new
client = 'client_example' # String | Identification of executing client.
time_from = DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Log time from.
time_to = DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Log time to.
ticket_type = 'ticket_type_example' # String | 
grouped_entries_type = 'grouped_entries_type_example' # String | 
opts = {
  organizational_unit_numbers: ['organizational_unit_numbers_example'], # Array<String> | 
  tags: ['tags_example'] # Array<String> | 
}

begin
  #Prepares entries statistically and returns them as a list.
  result = api_instance.load_grouped_entries(client, time_from, time_to, ticket_type, grouped_entries_type, opts)
  p result
rescue KoronaEntryClient::ApiError => e
  puts "Exception when calling StatisticsApi->load_grouped_entries: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client** | **String**| Identification of executing client. | 
 **time_from** | **DateTime**| Log time from. | 
 **time_to** | **DateTime**| Log time to. | 
 **ticket_type** | **String**|  | 
 **grouped_entries_type** | **String**|  | 
 **organizational_unit_numbers** | [**Array&lt;String&gt;**](String.md)|  | [optional] 
 **tags** | [**Array&lt;String&gt;**](String.md)|  | [optional] 

### Return type

[**Array&lt;StatisticGroupedEntry&gt;**](StatisticGroupedEntry.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

