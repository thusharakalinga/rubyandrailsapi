module Api
    module V1
        class BookingController < ApplicationController
            def index
                booking = Booking.order('created_at DESC');
                render json: {status: 'SUCESS', message: 'Loaded Bookings', data: booking}, status: :ok
            end
            def show
                booking = Booking.find(params[:id])
                render json: {status: 'SUCESS', message: 'Loaded Booking Details', data: booking}, status: :ok
            end

            def create
                booking = Booking.new(booking_params)
                id = booking_params[:booking_date]
                aprtid = booking_params[:appartment_id]
                msg = 'Unable To booking !selected date alredy Booked!!!... Try Anther Day'
                if Booking.exists?(:booking_date => id,:appartment_id => aprtid)

                          render json: {status: 'ERROR', message: msg }, status: :unprocessable_entity

                else
                    if booking.save
                        render json: {status: 'SUCESS', message: 'Apartment booking saved', data: booking}, status: :ok
                    else
                        render json: {status: 'ERROR', message: 'Apartment booking NOT saved', data: booking.errors}, status: :unprocessable_entity
                    end
                end
            end

            def booking_params
                params.permit(:booking_date,:booking_time,:appartment_id,:client_name,:client_email,:isbook)
            end
        end
    end
end
