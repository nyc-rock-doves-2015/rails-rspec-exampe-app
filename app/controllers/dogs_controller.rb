class DogsController < ApplicationController

  def index
    @dogs = Dog.all
  end

  def create
    dog = Dog.new(dog_params)
    if dog.save
      redirect_to dogs_path
    else
      render :new
    end
  end

  private 

  def dog_params
    params.require(:dog).permit(:name, :age, :breed, :texture, :gender)
  end
end
