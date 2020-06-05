# KoronaEntryClient::OrganizationalUnit

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | Objects ID. | [optional] 
**number** | **String** | Number of organizational unit. | [optional] 
**name** | **String** | Name of organizational unit. | [optional] 
**entry_gate** | **Boolean** | *True*, if this organizational unit is an entry gate. | [optional] 
**has_children** | **Boolean** | *True*, if this organizational unit has children. | [optional] 
**parent** | [**ModelReference**](ModelReference.md) |  | [optional] 

## Code Sample

```ruby
require 'KoronaEntryClient'

instance = KoronaEntryClient::OrganizationalUnit.new(id: null,
                                 number: null,
                                 name: null,
                                 entry_gate: null,
                                 has_children: null,
                                 parent: null)
```


