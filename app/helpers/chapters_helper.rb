module ChaptersHelper
  def image_route(s)
    "state_map/#{s.parameterize}.png"
  end

  def extract_links(link, host)
    if group = link.match(/#{host}\/(.*)/)
      group[1]
    else
      ""
    end
  end
end
