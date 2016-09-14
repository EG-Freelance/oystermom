class MediaFilesController < ApplicationController
  def create
    @media_file = MediaFile.new(media_file_params)
    if @media_file.save
      respond_to do |format|
        format.html { redirect_to gallery_path, notice: 'File uploaded.' }
        format.json { head :no_content }
      end
    else
      respond_to do |format|
        format.html { redirect_to :back, warning: 'File not uploaded.  Please verify that the information is correct.' }
        format.json { head :no_content }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_media_file
      @media_file = MediaFile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def media_file_params
      params.require(:media_file).permit(:image, :video, :name)
    end
end
