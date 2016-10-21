class NewsinfosController < ApplicationController
  
  before_action :set_newsinfo, only:[:show, :destroy]

  def index
    @newsinfos = Newsinfo.all
  end

  def show
  end

  def new
  	@newsinfo = Newsinfo.new
  end

  def create
    @newsinfo = Newsinfo.new(newsinfo_params)
    if @newsinfo.save
    redirect_to newsinfos_path
    else
    	 render 'new'
    end
  end
  
   def destroy
     @newsinfo.destroy
     redirect_to newsinfos_path
   end

  private
  def newsinfo_params
    params[:newsinfo].permit(:title)
  end

  def set_newsinfo
    @newsinfo = Newsinfo.find(params[:id])
  end

end