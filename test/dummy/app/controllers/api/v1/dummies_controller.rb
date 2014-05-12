module Api
  module V1
    class DummiesController < ApplicationController
      respond_to :json

      #
      ##
      # Returns list of dummies
      #
      # GET /api/v1/dummies
      #
      # params:
      #   param1 - required dummy param
      #   optional:
      #     param2 - optional dummy param
      #
      # = Examples
      #
      #   resp = conn.get("/api/v1/dummies", "param1" => "foo")
      #
      #   resp.status
      #   => 200
      #
      #   resp.body
      #   => {[{"id": 1, "name": "John"},
      #       {"id": 2, "name": "Sara"}]}
      #
      #   resp = conn.get("/api/v1/dummies",
      #                   "param1" => "foo",
      #                   "param2" => "bar")
      #
      #   resp.status
      #   => 200
      #
      #   resp.body
      #   => {[{"id": 1, "name": "John"}]}
      #
      def index
        if !params[:param1].blank?
          @dummies = Dummy.all.to_a
          render 'index'
        else
          render json: {message: 'Resource not found'}, status: 404
        end
      end
    end
  end
end
