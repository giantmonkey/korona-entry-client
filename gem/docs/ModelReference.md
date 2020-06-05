# KoronaEntryClient::ModelReference

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Global object ID. Recommanded to use for linking purposes. Will never change. | [optional] 
**name** | **String** | Name of object, insofar as available. | [optional] 
**number** | **String** | Number of object, insofar as available. | [optional] 
**href** | **String** | Link to object. | [optional] 

## Code Sample

```ruby
require 'KoronaEntryClient'

instance = KoronaEntryClient::ModelReference.new(id: null,
                                 name: null,
                                 number: null,
                                 href: null)
```


