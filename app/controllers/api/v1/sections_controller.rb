module Api
  module V1
    class SectionsController < ApplicationController
      def index
        sections = Section.order('id ASC')
        render json: sections, status: :ok
      end
    end
  end
end