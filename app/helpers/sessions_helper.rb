module SessionsHelper
  def login_user(user_id)
    session[:user_id] = user_id
  end

  def current_user
    return unless session[:user_id]

    @current_user ||= User.find(session[:user_id])
  end

  def logout_user
    session.delete(:user_id)
    @current_user = nil
  end
  def vote_for_article
    @article = Article.find(params[:id])
    if @article
      @article.vote(current_user.id)
      if @article.save
        redirect_to request.referer
      else
        redirect_to login_path
      end
    else
      redirect_to signup_path
    end
  end
  def unvote_for_article
    @article = Article.find(params[:id])
    if @article
      @article.unvote(current_user.id)
      if @article.save
        redirect_to request.referer
      else
        redirect_to login_path
      end
    else
      redirect_to signup_path
    end
  ends
end
