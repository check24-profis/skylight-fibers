module Types
  class QueryType < GraphQL::Schema::Object
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :random_people, [PersonType], null: false do
      argument :number, Integer, required: false, default_value: 10
    end

    def random_people(number:)
      Person.order("RANDOM()").limit(number)
    end
  end
end
