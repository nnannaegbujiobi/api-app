class Api::FitnessController < ApplicationController

def index
 response = HTTP.auth("Token #{ENV["API_KEY"]}").get("https://wger.de/api/v2/setting-repetitionunit/?format=json")
render json: response.parse
end
end