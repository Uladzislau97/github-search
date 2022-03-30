class SearchParamsBuilder
  DEFAULT_Q = ''.freeze
  DEFAULT_PAGE = 1
  PER_PAGE = 30

  def self.call(params)
    default_params = { 'q' => DEFAULT_Q, 'per_page' => PER_PAGE, 'page' => DEFAULT_PAGE }
    result = default_params.merge(params)
    result.symbolize_keys.slice(:q, :per_page, :page)
  end
end
