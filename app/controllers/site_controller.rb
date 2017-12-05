class SiteController < ApplicationController
  def show
    @service = MessageProcessorService.new
  end

  def contact
    @service = MessageProcessorService.new(params)

    if @service.valid?
      @service.deliver_now
      flash[:success] = 'Tu mensaje fue enviado exitosamente.'
    else
      flash[:danger]  = 'Tu mensaje no pudo ser enviado. Por favor, intenta de nuevo.'
    end

    render :show
  end
end
