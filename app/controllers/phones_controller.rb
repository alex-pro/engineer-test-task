class PhonesController < ApplicationController
  def create
    generated_number = NumberGenerator.new(phone_params[:number]).call
    phone = Phone.new(number: generated_number)
    return render json: phone, status: :created if phone.save
    render json: { message: phone.errors.full_messages }, status: :bad_request
  end

  private

  def phone_params
    params.require(:phone).permit(:number)
  end
end
