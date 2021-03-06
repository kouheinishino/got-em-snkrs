class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

  # Basic認証フィルタを対象アクションに指定
  http_basic_authenticate_with :name => 'a', :password => 'a', :only => :new

  require 'pp'

  # GET /items
  # GET /items.json
  def index
    @items = Item.all
    @items = @items.where!("name LIKE ?", "%#{params[:name]}%") if params[:name]
    @items = @items.where!(category_id: params[:category_id]) if params[:category_id]
    @items = @items.where!(collaboration: params[:collaboration]) if params[:collaboration]
    @items = @items.where!(release_date: params[:start_date]..params[:end_date]) if params[:start_date]..params[:end_date]
  end

  # GET /items/1
  # GET /items/1.json
  def show
  end

  # GET /items/new
  def new
    @item = Item.new
  end

  # GET /items/1/edit
  def edit
  end

  # POST /items
  # POST /items.json
  def create
    @item = Item.new(params.require(:item).permit(:name,:price,:release_date,:category_id,:collaboration,:description,:image_path))

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url, notice: 'Item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:name, :price, :release_date, :category, :collaboration, :description, :image_path)
    end
end
