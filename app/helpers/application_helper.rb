module ApplicationHelper

#implecit
  def new_oauth_token_path
    "#{ENV['server_base_url']}/oauth/authorize?client_id=#{ENV['oauth_token']}&redirect_uri=#{ENV['oauth_redirect_uri']}&response_type=token&scope=openid+user&response_mode=form_post"
  end

  def new_oauth_id_token_token_path
    "#{ENV['server_base_url']}/oauth/authorize/connect/authorize?client_id=#{ENV['oauth_token']}&redirect_uri=#{ENV['oauth_redirect_uri']}&response_type=id_token token&scope=user"
  end
#hybird
  def new_oauth_code_token_path
    "#{ENV['server_base_url']}/oauth/authorize/connect/authorize?client_id=#{ENV['oauth_token']}&redirect_uri=#{ENV['oauth_redirect_uri']}&response_type=code token&scope=openid&response_mode=form_post"
  end

  def new_oauth_code_id_token_path
    "#{ENV['server_base_url']}/oauth/authorize/connect/authorize?client_id=#{ENV['oauth_token']}&redirect_uri=#{ENV['oauth_redirect_uri']}&response_type=code id_token&response_mode=form_post"
  end

  def new_oauth_code_id_token_token_path
    "#{ENV['server_base_url']}/oauth/authorize/connect/authorize?client_id=#{ENV['oauth_token']}&redirect_uri=#{ENV['oauth_redirect_uri']}&response_type=code+id_token+token&response_mode=form_post"
  end
end
