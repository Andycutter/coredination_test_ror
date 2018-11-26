class JobsController < ApplicationController
  def index
    @jobs = fetch_API
  end
end

private

  def fetch_API
    url = 'https://app.coredination.net/api/1/job?api_token='
    api_url = Rails.application.credentials.API_TOKEN
    response = JSON.parse(RestClient.get(url+api_url).body)
  end

#response[0]['title']
#response[0]['description]