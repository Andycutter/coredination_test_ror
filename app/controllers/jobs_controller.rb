class JobsController < ApplicationController
  
  def index
    @jobs = fetch_API
  end

  def show
    @job = fetch_API.find(params[:id])
  end
end

private

  def fetch_API
    url = 'https://app.coredination.net/api/1/job?api_token='
    api_url = Rails.application.credentials.API_TOKEN
    response = JSON.parse(RestClient.get(url+api_url).body)
  end

#  def job_params
#    params.require(:job).permit(:title, :description, :priority)
#  end

#response[0]['title']
#response[0]['description']
#response[0]['priority']
#@jobs[0]['id']