ActiveAdmin.register Ingredient do

  form html: { enctype: 'multipart/form-data' } do |f|
    f.inputs 'Ingredient' do
      f.input :name
      f.input :parent_ingredient
      f.input :description
      f.input :approved, as: :boolean, input_html: { checked: 'checked' }
      f.input :submitted_by
      f.actions
    end
  end

  controller do
    def permitted_params
      params.permit!
    end
  end
end
