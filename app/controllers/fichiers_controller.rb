class FichiersController < ApplicationController

  def index
    @fichier = Fichier.new
  end

  def create
    @fichier = Fichier.new(fichier_params)
    if @fichier.save
      flash[:success] = "Fichier ajouté!"
      redirect_to root_path
    else
      render 'new'
    end
  end

   def fichier_params
    params.require(:fichier).permit(:doc_file_name, :doc_content_type, :doc_file_size)
  end

end
