class ProductsIndex < Chewy::Index
  settings analysis: {
      filter: {
          autocomplete_filter: {
              type: 'edge_ngram',
              min_gram: 1,
              max_gram: 2,
          }
      },
      analyzer: {
          autocomplete: {
              type: 'custom',
              tokenizer: 'standard',
              filter: ['lowercase', 'autocomplete_filter']
          }
      }
  }

  define_type Product do
    field :name, analyzer: 'autocomplete'
    field :id, :code, index: :not_analyzed
    field :ps
    field :price
    field :quantity
  end
end