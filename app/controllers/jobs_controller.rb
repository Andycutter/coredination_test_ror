class JobsController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  
  def index
    @jobs = fetch_API
  end
end

private

  def fetch_API
    url = 'https://app.coredination.net/api/1/job?api_token='
    api_token = Rails.application.credentials.API_TOKEN
    response = JSON.parse(RestClient.get(url+api_token).body)
  end