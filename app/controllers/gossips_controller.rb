class GossipsController < ApplicationController
  def new
  end
  
  def create
    puts params
  @user = User.find(41)
  @gossip = Gossip.new(title: params[:title], content: params[:content], user: @user) # avec xxx qui sont les données obtenues à partir du formulaire

    if @gossip.save # essaie de sauvegarder en base @gossip
      # si ça marche, il redirige vers la page d'index du site
      flash[:notice] = "Gossip créé avec succès!"
      redirect_to '/welcome'
    else
      # sinon, il render la view new (qui est celle sur laquelle on est déjà)
      render :new
    end
  end
end
