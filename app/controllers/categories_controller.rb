class CategoriesController < ApplicationController
  def show; end

  # GET /categories/new
  def new
    @category = Category.new
  end

  def index
    @mva = Article.most_voted_article
  end

  # POST /categories or /categories.json
  def create
    @category = Category.new(category_params)
    @category.name = params[:category][:name].capitalize
    categ = Category.category_exists(@category.name)
    if categ.exists?
      render :new
    else
      @category.save
      redirect_to root_path
    end
  end

  # PATCH/PUT /categories/1 or /categories/1.json
  def update
    respond_to do |format|
      if @category.update(category_params)
        format.html { redirect_to @category, notice: 'Category was successfully updated.' }
        format.json { render :show, status: :ok, location: @category }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categories/1 or /categories/1.json
  def destroy
    @category.destroy
    respond_to do |format|
      format.html { redirect_to categories_url, notice: 'Category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_category
    @category = Category.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def category_params
    params.require(:category).permit(:name, :priority)
  end
end
