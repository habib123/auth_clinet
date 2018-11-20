class SessionsController < ApplicationController

  def token
    binding.pry
    @code = params[:code]
    @id_token_auth = params[:id_token]
    @access_token_auth = params[:access_token]
    req_params = "client_id=#{ENV['oauth_token']}&client_secret=#{ENV['oauth_secret']}&code=#{params[:code]}&grant_type=authorization_code&redirect_uri=#{ENV['oauth_redirect_uri']}"
    response = JSON.parse RestClient.post("#{ENV['server_base_url']}/oauth/authorize/connect/token", req_params)
    session[:access_token] = response['access_token']
    @id_token = response['id_token']
  end


  def test_token
    binding.pry
    @code = params[:code]
    @id_token_auth = params[:id_token]
    @access_token_auth = params[:access_token]
    req_params = "client_id=#{ENV['oauth_token']}&client_secret=#{ENV['oauth_secret']}&code=#{params[:code]}&grant_type=authorization_code&redirect_uri=#{ENV['oauth_redirect_uri']}"
    response = JSON.parse RestClient.post("#{ENV['server_base_url']}/oauth/authorize/token", req_params)
    session[:access_token] = response['access_token']
    @id_token = response['id_token']
  end


  def destroy
    session.delete(:access_token)
    redirect_to root_path
  end
end