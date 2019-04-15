class MealsController < OpenReadController
  before_action :set_meal, only: [:show, :update, :destroy]

  # GET /meals
  def index
    @meals = Meal.all

    render json: @meals
  end

  # GET /meals/1
  def show
    render json: @meal
  end

  # POST /meals
  def create
    @meal = current_user.meals.build(meal_params)

    if @meal.save
      render json: @meal, status: :created, location: @meal
    else
      render json: @meal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /meals/1
  def update
    if @meal.update(meal_params)
      render json: @meal
    else
      render json: @meal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /meals/1
  def destroy
    @meal.destroy
  end

  def find
    @meal = Meal.find(params[:id])

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meal
      @meal = current_user.meals.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def meal_params
      params.require(:meal).permit(:meal, :date)
    end
end
