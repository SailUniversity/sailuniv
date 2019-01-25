require "administrate/base_dashboard"

class SaleDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    course: Field::BelongsTo,
    id: Field::Number,
    email: Field::String,
    guid: Field::String,
    stripe_id: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :course,
    :id,
    :email,
    :guid,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :course,
    :id,
    :email,
    :guid,
    :stripe_id,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :course,
    :email,
    :guid,
    :stripe_id,
  ].freeze

  # Overwrite this method to customize how sales are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(sale)
  #   "Sale ##{sale.id}"
  # end
end
