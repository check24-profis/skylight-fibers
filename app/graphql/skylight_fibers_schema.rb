class SkylightFibersSchema < GraphQL::Schema
  use(GraphQL::Dataloader)

  query(Types::QueryType)
end

SkylightFibersSchema.graphql_definition
