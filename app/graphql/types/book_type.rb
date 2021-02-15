module Types
  class BookType < GraphQL::Schema::Object
    field :title, String, null: false
    field :author, String, null: false
  end
end
