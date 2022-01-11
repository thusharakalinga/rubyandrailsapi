module Api
    module V1
        class ApartmentController < ApplicationController
            def index
                apartment = Apartment.order('created_at DESC');
                render json: {status: 'SUCESS', message: 'Loaded Apartment', data: apartment}, status: :ok
            end

            def show
                apartment = Apartment.find(params[:id])
                render json: {status: 'SUCESS', message: 'Loaded Apartment', data: apartment}, status: :ok
            end

            def create
                apartment = Apartment.new(apartment_params)
            
                if apartment.save
                    render json: {status: 'SUCESS', message: 'Apartment saved', data: apartment}, status: :ok
                else
                    render json: {status: 'ERROR', message: 'Apartment NOT saved', data: apartment.errors}, status: :unprocessable_entity
                end
            end

            def destroy
                apartment = Apartment.find(params[:id])
                apartment.destroy
                render json: {status: 'SUCESS', message: 'Apartment deleted', data: apartment}, status: :ok
            end

            def update
                apartment = Apartment.find(params[:id])
                if apartment.update(apartment_params)
                    render json: {status: 'SUCESS', message: 'Apartment updated', data: apartment}, status: :ok
                else
                    render json: {status: 'ERROR', message: 'Apartment NOT updated', data: apartment.errors}, status: :unprocessable_entity
                end
            end

            private

            def apartment_params
                params.permit(:name, :description,:price,:location)
            end

        end
    end
end
