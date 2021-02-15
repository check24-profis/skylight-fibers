require "graphql/client"
require "graphql/client/http"

desc "Makes GraphQL queries untils it's stopped"
task generate_calls: :environment do
  HTTP = GraphQL::Client::HTTP.new("http://localhost:3000/graphql")
  Schema = GraphQL::Client.load_schema(HTTP)
  Client = GraphQL::Client.new(schema: Schema, execute: HTTP)

  RandomPeopleQuery = Client.parse <<-'GRAPHQL'
    {
      randomPeople {
        name
        books {
          title
          author
        }
      }
    }
  GRAPHQL

  loop do
    Client.query(RandomPeopleQuery)
    sleep(0.5)
  end
end
