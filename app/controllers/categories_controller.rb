class CategoriesController < ApplicationController
    def new 
        @category = Category.new
      end
      
      def create
        @category = Category.new(create_params)
        @category.name = params[:category][:name].capitalize
        categ = Category.category_exists(@category.name)
        if categ.exists?
          render :new
        else
          @category.save
          redirect_to catgory_path
        end
      end
    def index
        @mva = Article.new
      end
    
      def show
        @category = Category.find(params[:id])
      end
end
