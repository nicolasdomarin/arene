class FichierController < ApplicationController

  def new
    @photo = Photo.new
  end

  def create
    @fichier = Photo.new(fichier_params)
    if @fichier.save
      flash[:success] = "Fichier ajouté!"
      redirect_to root_path
    else
      render 'new'
    end
  end

   def fichier_params
    params.require(:fichier).permit(:doc)
  end

end
