module Api
  module V1
    class SectionsController < ApplicationController

      def index
        sections = Section.order('id ASC')
        render json: sections, status: :ok
      end

      def show
        status = :ok
        section = Section.find_by id: params[:id]

        if section.nil?
          status = :not_found
          section = { message: "Can't find section with id #{params[:id]}" }
        end

        render json: section, status: status
      end

      def create
        @section = Section.new(section_params)
        @section.save

        render json: section, status: :ok
      end

      def update
        @section = Section.find(params[:id])
        @section.update_attributes(section_params)

        render json: @section, status: :ok
      end

      def destroy
        @section = Section.find(params[:id])
        @section.delete

        render status: :no_content
      end

      private

      def section_params
        params.require(:section).permit(:title, :subtitle)
      end
    end
  end
end