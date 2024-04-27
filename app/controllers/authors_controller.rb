class AuthorsController < ApplicationController
  before_action :set_author, only: [:show, :edit, :update, :destroy]

  # GET /authors
  def index
    @authors = Author.all
  end

  # GET /authors/1
  def show
  end

  # GET /authors/new
  def new
    @author = Author.new
  end

  # GET /authors/1/edit
  def edit
  end

  # POST /authors
  def create
    @author = Author.new(author_params)

    if @author.save
      redirect_to author_path(@author), notice: 'Author was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /authors/1
  def update
    if @author.update(author_params)
      redirect_to author_path(@author), notice: 'Author was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /authors/1
  def destroy
    @author.destroy
    redirect_to authors_url, notice: 'Author was successfully destroyed.'
  end

  private
    def set_author
      @author = Author.find(params[:id])
    end

    def author_params
      params.require(:author).permit(:name, :dob, :email, :phone_number)
    end
end
