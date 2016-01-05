require 'builder'

module SiteHelpers
  def button_tag(text, options={})
    content_tag(:button, {:type => "submit"}.merge(options)) { text }
  end

  def copyright_years(start_year)
    end_year = Date.today.year
    if start_year == end_year
      start_year.to_s
    else
      start_year.to_s + '&ndash;' + end_year.to_s
    end
  end
end
