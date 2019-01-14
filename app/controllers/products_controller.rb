class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy, :update_requested_by]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :require_author, only: [:edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    @products = Product.all.order("created_at desc") # For descending order
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @product = current_user.products.build
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = current_user.products.build(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  def update_requested_by
    @product.update_attribute(:requested_by, current_user.name + " | " + current_user.contact_number)
    @product.update_attribute(:requested, true)
    redirect_to @product, notice: "Requested product"
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def require_author
    redirect_to(site_home_url) unless @product.user == current_user
  end

  def is_author
    redirect_to(site_home_url) if @product.user == current_user
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:title, :description, :cost, :condition, :brand, :image, :sold, :requested, :requested_by, :user_id)
    end
end
