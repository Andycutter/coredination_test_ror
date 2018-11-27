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

#  def job_params
#    params.require(:job).permit(:title, :description, :priority, :id)
#  end

#response[0]['title']
#response[0]['description']
#response[0]['priority']
#@jobs[0]['id']