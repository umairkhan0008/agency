class MainController < ApplicationController
    before_action :set_designing_posts, only: [:designing]
    before_action :set_development_posts, only: [:development]
    before_action :set_mobile_posts, only: [:mobile]

    def index

    end

    def designing
        @designing_posts = Post.where(type: :designing)
    end

    def development
        @development_posts = Post.where(type: :development) 
    end

    def mobile

    end

    def marketing

    end

    def contact

    end

    private 

        def set_designing_posts
            @designing_posts = Post.where(type: :designing)
        end

        def set_development_posts
            @development_posts = Post.where(type: :development)
        end

        def set_mobile_posts
            @mobile_posts = Post.where(type: :mobile)
        end
end