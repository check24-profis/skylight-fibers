module Types
  class PersonType < GraphQL::Schema::Object
    field :name, String, null: false
    field :books, [BookType], null: false

    def books
      dataloader
        .with(Sources::RecordsSource, Book, :person_id)
        .load(object.id)
    end
  end
end
