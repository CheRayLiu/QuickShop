# frozen_string_literal: true

class ApplicationController < ActionController::API
    def query
      result = Schema.execute(
        params[:query]
      )
      render json: result
    end

    def mutate
        result = Schema.execute(
          params[:mutate]
        )
        render json: result
      end
  end
  
