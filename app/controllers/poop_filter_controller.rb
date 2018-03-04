class PoopFilterController < ApplicationController
  def landing_page
    render file: Rails.root.join('public', 'index.html')
  end

  def filter
    text = params[:text]

    if text.present?
      render json: {
        input: text,
        output: PoopFilter.filter(text)
      }
    else
      render json: { error: "Parameter 'text' is missing 😟" }
    end
  end
end
