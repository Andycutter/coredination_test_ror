class JobsController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  
  def index
    @jobs = fetch_api
  end

  def show
    @job = fetch_api.detect {|job| job["id"] == 212821711}
  end
end

private

  def fetch_api
    url = 'https://app.coredination.net/api/1/job?api_token='
    api_token = Rails.application.credentials.API_TOKEN
    response = JSON.parse(RestClient.get(url+api_token).body)
  end
