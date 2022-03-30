class GithubService
  GITHUB_API_HOST = 'https://api.github.com'.freeze

  def self.search(params)
    url = "#{GITHUB_API_HOST}/search/repositories"
    res = HttpService.get(url, params)

    raise ActionController::BadRequest unless res.is_a?(Net::HTTPSuccess)

    JSON.parse(res.body)
  end
end
