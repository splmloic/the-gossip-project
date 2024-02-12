class HomeController < ApplicationController
    def show
        @id = params[:id]
        @gossips = Gossip.all
    end
    def gossip
        @id = params[:id]
        @gossip = Gossip.find(params[:id])
    end
    def profil
        @id = params[:id]
    end
end