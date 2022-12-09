class Finders::UsersFinder
  attr_accessor :params

  def initialize(params)
    @params = params
  end

  def execute
    user = User.all
    user.where(filters)
  end

  private

  def filters
    filters = {}
    filters = filter_by_first_name(filters, params[:first_name])
    filters = filter_by_last_name(filters, params[:last_name])
    filter_by_email(filters, params[:email])
  end

  def filter_by_first_name(filters, first_name)
    return filters if first_name.blank?

    filters.merge!(first_name: first_name)
  end

  def filter_by_last_name(filters, last_name)
    return filters if last_name.blank?

    filters.merge!(last_name: last_name)
  end

  def filter_by_email(filters, email)
    return filters if email.blank?

    filters.merge!(email: email)
  end
end
