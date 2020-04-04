class ArtistsController < ApplicationController
    def show
        @artist = find_artist
    end

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.create(artist_params)
        redirect_to @artist
    end

    def edit
        @artist = find_artist
    end

    def update
        @artist = find_artist
        @artist.update(artist_params)
        redirect_to @artist
    end

    private

    def find_artist
        Artist.find(params[:id])
    end

    def artist_params
        params.require(:artist).permit(:name, :bio)
    end

end
