# gemifiied KORONA.cloud Entry client

[![Gem Version](https://badge.fury.io/rb/korona-entry-client.svg)](https://badge.fury.io/rb/korona-entry-client)

# generate gem with openapi-generator (was swagger-codegen)
```
brew install openapi-generator
openapi-generator generate -i swagger.json -g ruby -o gem --package-name korona-entry-client -p gemName=korona-entry-client -p gemHomepage=https://github.com/giantmonkey/korona-entry-client -p gemVersion=1.0.2
```
(all ruby options:  [https://openapi-generator.tech/docs/generators/ruby/](https://openapi-generator.tech/docs/generators/ruby/) )

# publish gem to rubygems
```
cd gem
gem build korona-entry-client.gemspec
gem push korona-entry-client-1.0.2.gem
```

# usage in a project
```
config = KoronaEntryClient::Configuration.new do |config|
  config.host       = 'korona3.de'
  config.base_path  = 'entry_mk/services/v1/rxb/'
end

client  = KoronaEntryClient::ApiClient.new(config)
api     = KoronaEntryClient::TicketsApi.new(client)
tickets = api.get_tickets('', 0, 1, {locked: true})
```
