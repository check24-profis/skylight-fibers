module Sources
  class RecordsSource < GraphQL::Dataloader::Source
    def initialize(model, column)
      @model = model
      @column = column.to_s
      @column_type = model.type_for_attribute(@column)
    end

    def fetch(keys)
      casted_keys = keys.map { |key| @column_type.cast(key) }
      records = @model.where(@column => casted_keys).group_by(&@column.to_sym)

      casted_keys.map { |key| records[key] || [] }
    end
  end
end
