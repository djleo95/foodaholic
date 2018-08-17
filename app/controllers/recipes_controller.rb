class RecipesController < ApplicationController
    def new
        @album = Album.new
    end
end