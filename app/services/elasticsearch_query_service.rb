class ElasticsearchQueryService
  def initialize()
  end

  def paginate_query(current_scope, page, per_page)
    current_scope.offset(page *  per_page).limit(per_page)
  end

  def search_term(current_scope, term)
    unless term.blank?
      current_scope = current_scope.query(match: {name: term})
      current_scope = current_scope.query(term: {code: term})
      current_scope = current_scope.query(term: {id: term}).query_mode(:should)
    end
    current_scope
  end
end