class FichiersController < ApplicationController

  def index
    @fichier = Fichier.new
  end

  def create
    @fichier = Fichier.new(fichier_params)
    if @fichier.save
      f = params[@fichier]
      if f && f.doc_fil_size > 0
        path = "#{RAILS_ROOT}/csv"
        File.open("#{path}", "w") do |file|
          file.write(f.read)
        end
      end
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
