class RepositoriesController < ApplicationController
  def index
    search_params = SearchParamsBuilder.call(permitted_params)
    return if search_params[:q].empty?

    search_result = GithubService.search(search_params)
    @data = RepositoriesPresenter.call(search_result, search_params)
  rescue StandardError
    @error = 'Search error'
  end

  private

  def permitted_params
    params.permit(:q, :page, :commit)
  end
end
