class RepositoriesPresenter
  MAX_TOTAL_PAGES = 33

  def self.call(data, params)
    total_pages = data['total_count'] / params[:per_page]
    additional_page = data['total_count'] % params[:per_page] != 0
    res_total_pages = additional_page ? total_pages + 1 : total_pages

    {
      items: data['items'],
      q: params[:q],
      page: params[:page].to_i,
      total_pages: [res_total_pages, MAX_TOTAL_PAGES].min
    }
  end
end
