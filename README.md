# generate gem with openapi-generator (was swagger-codegen)
```
brew install openapi-generator
openapi-generator generate -i korona_entry_v1.json -g ruby -o gem --package-name korona-entry-client -p gemName=korona-entry-client
```
(all ruby options:  [https://openapi-generator.tech/docs/generators/ruby/](https://openapi-generator.tech/docs/generators/ruby/) )
# usage in a project
```
config = KoronaEntryClient::Configuration.new {|config| config.host = 'korona3.de'; config.base_path = 'entry_mk/services/v1/rxb/' }
client  =  KoronaEntryClient::ApiClient.new(config)
api     = KoronaEntryClient::TicketsApi.new(client)
api.get_tickets('', 0, 1, {locked: true})
```