class MusicController < ApplicationController
    def index
        @musics = Music.all
    end
    
    def show
        @music = Music.find_by_id(params[:id])
    end
    
    def new
    end
    
    def create
        t = Music.new
        t.name = params['name']
        t.picture = params['picture']
        t.journal = params['journal']
        t.age = params['age']
        t.save
        redirect_to "/music/show/#{ t.id }"
    end
    
    def edit
        @music = Music.find_by_id(params[:id])
    end
    
    def update
       t = Music.find_by_id(params['id'])
        t.name = params['name']
        t.journal = params['journal']
        t.age = params['age']
        t.save
        redirect_to "/music/show/#{t.id}"

    end
    
    def destroy
        t = Music.find_by_id(params[:id])
        t.destroy
        redirect_to "/"
    end
end
