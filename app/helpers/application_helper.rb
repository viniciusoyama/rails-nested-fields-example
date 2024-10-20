module ApplicationHelper

  def capture_for_dynamic_fields(model, &block)
    response = nil

    form_with(model: model) do |form|
      response = capture(form, &block)
    end

    response
  end
end
