class JournalistsController < ApplicationController
  def index
    @journalist = Journalist.all()
    render layout: 'journal'
  end

  def create
    @journalist = Journalist.new(posts_params)

    if @journalist.save
      redirect_to periodistas_exito_path
    else
      render :new
    end
  end

  def new
    render layout: 'journal'
  end

  def jsuccess
    render layout: 'journal'
  end

  def posts_params
    params.require(:journalist).permit(:name, :lastname, :speciality)
  end
end
